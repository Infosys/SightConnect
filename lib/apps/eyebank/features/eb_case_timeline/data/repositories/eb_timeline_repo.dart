import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_intimation_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_prefilled_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_reject_case_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EBTimelineRepo {
  // POST : Reject case
  Future<Either<EBFailure, void>> rejectCase(
    EBRejectCaseRequestModel request,
    int encounterId,
  );
  // GET : Prefilled form by stage and encounter id
  Future<Either<EBFailure, EBFormPrefilledResponseModel>>
      fetchPrefilledFormByStageAndId(
    String? encounterId,
    String? serviceRequestId,
    String? stage,
  );
  // GET : AI form for creating new case
  Future<Either<EBFailure, EBFormIntimationResponseModel>> getIntimationForm({
    required String timelineName,
    String? timelineVersion,
  });
  // GET : Form configuration by stage
  Future<Either<EBFailure, Map<String, dynamic>>> getFormConfiguration({
    required String? stage,
    required String? stageVersion,
  });
}

final ebTimlineRepoProvider = Provider(
  (ref) => EBTimelineRepoImpl(
    ref.watch(dioProvider),
  ),
);

class EBTimelineRepoImpl extends EBTimelineRepo {
  final Dio _dio;
  EBTimelineRepoImpl(this._dio);

  @override
  Future<Either<EBFailure, void>> rejectCase(
      EBRejectCaseRequestModel request, int encounterId) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/encounters/$encounterId/reject';

      final response = await _dio.post(endPoint, data: request.toJson());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        logger.f(response.data);
        throw Exception(response.statusMessage ?? 'Error in rejectCase');
      }
    });
  }

  @override
  Future<Either<EBFailure, EBFormPrefilledResponseModel>>
      fetchPrefilledFormByStageAndId(
    String? encounterId,
    String? serviceRequestId,
    String? stage,
  ) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/services/eyebank/api/encounters/$encounterId/stage/$stage';
      final response = await _dio.get(
        endPoint,
        queryParameters: {
          'serviceRequestId': serviceRequestId,
        },
      );
      if (response.statusCode == 200) {
        return EBFormPrefilledResponseModel.fromJson(response.data);
      } else {
        logger.f(response.data);
        throw Exception(
          response.statusMessage ?? 'Error in fetchPrefilledFormByStageAndId',
        );
      }
    });
  }

  @override
  Future<Either<EBFailure, EBFormIntimationResponseModel>> getIntimationForm({
    required String timelineName,
    String? timelineVersion,
  }) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/services/configs/api/timelines/$timelineName/stage/0';
      final response = await _dio.get(endPoint);

      if (response.statusCode == 200) {
        return EBFormIntimationResponseModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'Error in getAIForm');
      }
    });
  }

  @override
  Future<Either<EBFailure, Map<String, dynamic>>> getFormConfiguration({
    required String? stage,
    required String? stageVersion,
  }) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/services/configs/api/stages/${stage}';
      final response = await _dio.get<Map<String, dynamic>>(
        endPoint,
        queryParameters: {
          'version': stageVersion,
        },
      );
      logger.d(response.data.toString());
      if (response.statusCode == 200) {
        return Future.value(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'getFormConfiguraton');
      }
    });
  }
}
