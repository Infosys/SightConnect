import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_triage_response.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class OptometristRemoteSource {
  Future<Either<Failure, OptometristTriageResponse>> saveTriage({
    required OptometristTriageResponse triage,
  });
  Future<List<OptometristTriageResponse>> getTriageByPatientId(int patientId);
  Future<List<OptometristTriageResponse>> getOptometristTriageResponseByFilters(
    DateTime startDate,
    DateTime endDate,
    String capturedBy,
  );
  Future<List<OptometristTriageResponse>> getTriageBySearch(
    String query,
    String capturedBy,
  );
}

class OptometristRemoteSourceImpl implements OptometristRemoteSource {
  Dio dio;
  OptometristRemoteSourceImpl(this.dio);

  @override
  Future<Either<Failure, OptometristTriageResponse>> saveTriage(
      {required OptometristTriageResponse triage}) async {
    var endpoint = "/services/validation/api/patient-responses";
    logger.d({
      "API saveTriage": triage.toJson(),
    });

    var response = await dio.post(
      endpoint,
      data: triage.toJson(),
    );

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      try {
        return Right(OptometristTriageResponse.fromJson(response.data));
      } on Exception catch (e) {
        return Left(ServerFailure(
            errorMessage: 'This is a server exception - ${e.toString()}'));
      }

      // return OptometristTriageResponse.fromJson(response.data);
    } else {
      Fluttertoast.showToast(
        msg: "Unable to save the Triage! Please try again.",
        toastLength: Toast.LENGTH_LONG,
      );
      throw ServerException();
    }
  }

  @override
  Future<List<OptometristTriageResponse>> getTriageByPatientId(
      int patientId) async {
    var endpoint = "/services/validation/api/patient-responses/$patientId";

    try {
      var response = await dio.get<List<dynamic>>(endpoint);

      logger.d(response.data!);

      return response.data!
          .map((e) => OptometristTriageResponse.fromJson(e))
          .toList();
    } catch (e) {
      logger.d(e);
    }
    return [];
  }

  @override
  Future<List<OptometristTriageResponse>> getOptometristTriageResponseByFilters(
      DateTime startTime, DateTime entTime, String capturedBy) async {
    var endpoint =
        "/services/validation/api/patient-responses/date/$capturedBy";

    try {
      logger.d(
          "Start Time: ${startTime.toUtc().toIso8601String()}, End Time: $entTime");
      var response = await dio.get<List<dynamic>>(endpoint, queryParameters: {
        "startDate": startTime.toUtc().toIso8601String(),
        "endDate": entTime.toUtc().toIso8601String(),
      });

      return response.data!
          .map((e) => OptometristTriageResponse.fromJson(e))
          .toList();
    } catch (e) {
      logger.d(e);
    }
    return [];
  }

  @override
  Future<List<OptometristTriageResponse>> getTriageBySearch(
      String query, String capturedBy) async {
    var endpoint =
        "/services/validation/api/patient-responses/search/$capturedBy";

    try {
      var response = await dio.get<List<dynamic>>(endpoint, queryParameters: {
        "patientId": query,
      });

      return response.data!
          .map((e) => OptometristTriageResponse.fromJson(e))
          .toList();
    } catch (e) {
      logger.d(e);
    }
    return [];
  }
}

var optometristRemoteSource = Provider<OptometristRemoteSource>(
  (ref) => OptometristRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);
