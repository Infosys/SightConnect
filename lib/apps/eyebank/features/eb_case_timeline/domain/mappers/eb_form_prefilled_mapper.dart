import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_form_prefilled_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_form_prefilled_response_entity.dart';
import 'package:eye_care_for_all/main.dart';

class EBFormPrefilledMapper {
  EBFormPrefilledMapper._();

  static EBFormPrefilledResponseEntity mapToEntity(
    EBFormPrefilledResponseModel model,
    Map<String, dynamic> formData,
  ) {
    try {
      return EBFormPrefilledResponseEntity(
        encounterId: model.encounterId,
        tenantId: model.tenantId,
        stageName: model.stageName,
        stageVersion: model.stageVersion,
        formData: model.formData,
        displayFormData: formData,
        metaData: model.metaData,
        serviceRequestId: model.serviceRequestId,
      );
    } catch (e) {
      logger.e(e);
      throw Exception('Failed to map model to entity');
    }
  }
}
