import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EBFormManageRepository {
  Future<Either<EBFailure, void>> saveOrDraft(
    String? encounterId,
    String? stageName,
    String? stageVersion,
    String? serviceRequestId,
    DynamicFormSavingType action,
    EBFormActionRequestModel requestData,
  );

  // GET : Save Transplant Timeline Forms
  Future<Either<EBFailure, void>> saveOrDraftTransplatForm(
    EBSubmitFormDataRequestModel requestData,
    DynamicFormSavingType action,
  );
}

final ebFormManageRepositoryProvider = Provider<EBFormManageRepository>((ref) {
  return EBFormManageRepositoryImpl(ref.watch(dioProvider));
});

class EBFormManageRepositoryImpl implements EBFormManageRepository {
  final Dio _dio;
  EBFormManageRepositoryImpl(this._dio);
  @override
  Future<Either<EBFailure, void>> saveOrDraft(
    String? encounterId,
    String? stageName,
    String? stageVersion,
    String? serviceRequestId,
    DynamicFormSavingType action,
    EBFormActionRequestModel requestData,
  ) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/services/eyebank/api/encounters/$encounterId/stage/$stageName/forms/${action.name}';

      final response = await _dio.post(
        endPoint,
        data: requestData.toJson(),
        queryParameters: {
          'stageVersion': stageVersion,
          'serviceRequestId': serviceRequestId
        },
      );

      logger.f(response.data);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        logger.f(response.data);
        throw Exception(response.statusMessage ?? 'Failed to save form');
      }
    });
  }

  @override
  Future<Either<EBFailure, void>> saveOrDraftTransplatForm(
    EBSubmitFormDataRequestModel requestData,
    DynamicFormSavingType action,
  ) async {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/services/eyebank/api/service-requests/${action.name}';
      final response = await _dio.post(
        endPoint,
        data: requestData.toJson(),
      );
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception(
            response.statusMessage ?? 'Error in saveTimelineRequestForm');
      }
    });
  }
}
