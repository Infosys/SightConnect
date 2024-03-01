import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repositories/triage_repository.dart';

var triageRepositoryProvider = Provider<TriageRepository>(
  (ref) => TriageRepositoryImpl(
      ref.watch(triageLocalSourceProvider),
      ref.watch(triageRemoteSource),
      ref.watch(connectivityProvider),
      ref.watch(dioProvider)),
);

class TriageRepositoryImpl implements TriageRepository {
  TriageLocalSource localDataSource;
  TriageRemoteSource remoteDataSource;
  NetworkInfo networkInfo;
  Dio dio;

  TriageRepositoryImpl(
    this.localDataSource,
    this.remoteDataSource,
    this.networkInfo,
    this.dio,
  );

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>>
      getAssessment() async {
    if (await networkInfo.isConnected()) {
      try {
        logger.d("Internet is connected Getting triage from remote");
        var remoteResponse = await remoteDataSource.getTriage();
        await localDataSource.deleteAssessment();

        try {
          for (var i = 0;
              i < remoteResponse.questionnaire!.questionnaireItem!.length;
              i++) {
            if (remoteResponse
                        .questionnaire!.questionnaireItem![i].relatedImage !=
                    null &&
                remoteResponse.questionnaire!.questionnaireItem![i]
                    .relatedImage!.isNotEmpty) {
              final base64Image = await converNetworkImageToBase64(
                  dio,
                  remoteResponse.questionnaire!.questionnaireItem![i]
                      .relatedImage![0].url!);
              List<QuestionnaireItemFHIRModel> updatedItems =
                  List.from(remoteResponse.questionnaire!.questionnaireItem!);
              updatedItems[i] = updatedItems[i].copyWith(
                  relatedImage: updatedItems[i]
                      .relatedImage!
                      .map((e) => e.copyWith(url: base64Image))
                      .toList());
              remoteResponse = remoteResponse.copyWith(
                  questionnaire: remoteResponse.questionnaire!
                      .copyWith(questionnaireItem: updatedItems));
            }
          }
        } catch (e) {
          logger.e("Error while converting image to base64: $e");
        }
        await localDataSource.saveAssessment(triage: remoteResponse);

        final localResponse = await localDataSource.getAssessment();

        return Right(localResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      } on UnknownException {
        return Left(
            UnknownFailure(errorMessage: 'This is a unknown exception'));
      }
    } else {
      try {
        logger.d("Internet is not connected Getting triage from local");
        final localResponse = await localDataSource.getAssessment();
        return Right(localResponse);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      } on UnknownException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      }
    }
  }

  @override
  Future<Either<Failure, TriagePostModel>> saveTriageResponse({
    required TriagePostModel triageResponse,
    required String patientID,
  }) async {
    if (await networkInfo.isConnected()) {
      try {
        logger.d("Internet is connected Saving triage to remote");

        triageResponse = triageResponse.copyWith(
            imagingSelection: await convertBase64ToFile(
                dio, triageResponse.imagingSelection));

        final remoteResponse =
            await remoteDataSource.saveTriage(triage: triageResponse);
        await localDataSource.deleteTriageResponse();
        await localDataSource.resetTriage();

        return Right(remoteResponse);
      } on ServerException {
        final localResponse = await localDataSource.saveTriageResponse(
            triageResponse: triageResponse, patientID: patientID);

        await localDataSource.resetTriage();
        return Left(TriageFailure(
          errorMessage: 'This is a server exception',
          triageResponse: localResponse,
        ));
      } on UnknownException {
        final localResponse = await localDataSource.saveTriageResponse(
          triageResponse: triageResponse,
          patientID: patientID,
        );

        await localDataSource.resetTriage();
        return Left(TriageFailure(
          errorMessage: 'This is a unknown exception',
          triageResponse: localResponse,
        ));
      }
    } else {
      try {
        logger.d("Internet is not connected Saving triage to local");

        final localResponse = await localDataSource.saveTriageResponse(
          triageResponse: triageResponse,
          patientID: patientID,
        );
        await localDataSource.resetTriage();
        return Left(TriageFailure(
          errorMessage: 'This is a unknown exception',
          triageResponse: localResponse,
        ));
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      } on UnknownException {
        return Left(UnknownFailure(errorMessage: 'No local data found'));
      }
    }
  }

  @override
  Future<Either<Failure, int>> getTriageCurrentStep(String patientId) async {
    try {
      final localResponse =
          await localDataSource.getTriageCurrentStep(patientId);
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, void>> deleteAssessment() async {
    logger.d({"message": "Deleting triage from local"});

    try {
      final localResponse = await localDataSource.deleteAssessment();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TriagePostModel>> getTriageResponse() async {
    logger.d({"message": "Getting final triage response from local"});

    try {
      final localResponse = await localDataSource.getTriageResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageQuestionModel>>>
      getQuestionaireResponseLocally() async {
    logger.d({"message": "Getting questionaire response from local"});

    try {
      final localResponse = await localDataSource.getQuestionaireResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageImagingSelectionModel>>>
      getTriageEyeScanResponseLocally() async {
    logger.d({"message": "Getting triage eye scan response from local"});

    try {
      final localResponse = await localDataSource.getTriageEyeScanResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>>
      getVisionAcuityTumblingResponseLocally() async {
    logger.d({"message": "Getting vision acuity tumbling response from local"});

    try {
      final localResponse =
          await localDataSource.getVisionAcuityTumblingResponse();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: 'No local data found'));
    }
  }

  @override
  Future<Either<Failure, void>> resetTriage() async {
    logger.d({"message": "Resetting triage from local"});

    try {
      final localResponse = await localDataSource.resetTriage();
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel> triageEyeScan,
    required String patientID,
  }) async {
    logger.d({"message": "Saving triage eye scan to local"});

    try {
      final localResponse = await localDataSource.saveTriageEyeScanLocally(
        triageEyeScan: triageEyeScan,
        patientID: patientID,
      );
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
    required String patientID,
  }) async {
    logger.d({"message": "Saving triage questionnaire to local"});
    try {
      final localResponse =
          await localDataSource.saveTriageQuestionnaireLocally(
              triageQuestionnaireResponse: triageQuestionnaireResponse,
              patientID: patientID);
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
    required String patientID,
  }) async {
    logger.d({"message": "Saving triage visual acuity to local"});

    try {
      final localResponse = await localDataSource.saveTriageVisualAcuityLocally(
        triageVisualAcuity: triageVisualAcuity,
        patientID: patientID,
      );
      return Right(localResponse);
    } catch (e) {
      return Left(CacheFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> updateAssessment(
      {required DiagnosticReportTemplateFHIRModel assessment}) {
    // TODO: implement updateAssessment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> saveAssessment(
      {required DiagnosticReportTemplateFHIRModel assessment}) {
    // TODO: implement saveAssessment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, TriagePostModel>> updateTriageResponse(
      {required TriageUpdateModel triageResponse}) async {
    try {
      final remoteResponse =
          await remoteDataSource.updateTriage(triage: triageResponse);

      return Right(remoteResponse);
    } catch (e) {
      logger.d({"error while saving triage ": e});
      //  logger.d({"error while saving triage ": triage});
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TriagePostModel>> saveTriageResponseForEvent(
      {required TriagePostModel triageResponse,
      required String eventId}) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse = await remoteDataSource.saveTriageForEvent(
            triage: triageResponse, eventId: eventId);

        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      } on UnknownException {
        return Left(
            UnknownFailure(errorMessage: 'This is a unknown exception'));
      }
    } else {
      throw ServerFailure(errorMessage: 'No internet connection');
    }
  }
}

Future<String> converNetworkImageToBase64(Dio dio, String baseURL) async {
  try {
    final Response response = await dio.get(
      baseURL,
      options: Options(
        responseType: ResponseType.bytes,
      ),
    );
    final String base64Image = base64Encode(response.data);
    return base64Image;
  } catch (e) {
    logger.e("Error while converting image to base64: $e");
    return "";
  }
}

Future<List<PostTriageImagingSelectionModel>?> convertBase64ToFile(
  Dio dio,
  List<PostTriageImagingSelectionModel>? observations,
) async {
  List<PostTriageImagingSelectionModel> convertedList = [];
  if (observations != null) {
    // ignore: avoid_function_literals_in_foreach_calls
    for (var element in observations) {
      if (element.endpoint != null && element.identifier != null) {
        File file = converBase64ToXfile(element.endpoint!);
        final fileMS = FileMsService(dio);
        final url = await fileMS.uploadImage(file);

        var response = fileMS.parseUrl(url);
        convertedList.add(
          PostTriageImagingSelectionModel(
            identifier: element.identifier,
            fileId: response["fileId"]!,
            endpoint: response["endPoint"]!,
            baseUrl: response["baseUrl"]!,
            score: element.score,
          ),
        );
      }
    }
  }
  return convertedList;
}

File converBase64ToXfile(String encodedString) {
  final bytes = base64Decode(encodedString);
  final tempDir = Directory.systemTemp;
  final file = File('${tempDir.path}/image.jpg');
  file.writeAsBytesSync(bytes);
  return file;
}
