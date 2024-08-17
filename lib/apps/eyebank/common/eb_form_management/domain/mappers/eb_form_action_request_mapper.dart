import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/data/models/eb_form_action_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_form_management/domain/entity/eb_form_action_request_entity.dart';
import 'package:eye_care_for_all/main.dart';

class EbFormActionRequestMapper {
  static EBFormActionRequestModel mapToModel(EBFormActionRequestEntity entity) {
    try {
      return EBFormActionRequestModel(
        timelineName: entity.timelineName,
        timelineVersion: entity.timelineVersion,
        eBformData: entity.eBformData,
        performerId: entity.performerId,
        performerRole: entity.performerRole,
        verifiedById: entity.verifiedById,
        verifiedByRole: entity.verifiedByRole,
      );
    } catch (e) {
      logger.e(e);
      throw Exception(
          'Failed to map EbFormActionRequestEntity to EBFormActionRequestModel');
    }
  }

  static EBFormActionRequestEntity mapToEntity(EBFormActionRequestModel model) {
    try {
      return EBFormActionRequestEntity(
        timelineName: model.timelineName ?? '',
        timelineVersion: model.timelineVersion ?? '',
        eBformData: model.eBformData ?? {},
        performerId: model.performerId,
        performerRole: model.performerRole,
        verifiedById: model.verifiedById,
        verifiedByRole: model.verifiedByRole,
      );
    } catch (e) {
      logger.e(e);
      throw Exception(
          'Failed to map EBFormActionRequestModel to EbFormActionRequestEntity');
    }
  }
}
