import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EBFormManageRepository {
  Future<Either<EBFailure, void>> saveOrDraft(int encounterId, String stageName,
      DynamicFormSavingType action, EBFormActionRequestModel data);
}

final ebFormManageRepositoryProvider = Provider<EBFormManageRepository>((ref) {
  return EBFormManageRepositoryImpl(ref.watch(dioProvider));
});

class EBFormManageRepositoryImpl implements EBFormManageRepository {
  final Dio _dio;
  EBFormManageRepositoryImpl(this._dio);
  @override
  Future<Either<EBFailure, void>> saveOrDraft(int encounterId, String stageName,
      DynamicFormSavingType action, EBFormActionRequestModel requestData) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/eyebank/api/encounters/$encounterId/stage/$stageName/forms/${action.name}';

      final response = await _dio.post(endPoint, data: requestData.toJson());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        logger.f(response.data);
        throw Exception(response.statusMessage ?? 'Failed to save form');
      }
    });
  }
}
