import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/data/models/eb_reject_case_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_reject_case_request_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';

class EbTimelineMapper {
  EbTimelineMapper._();

  static EBRejectCaseRequestEntity mapToEntity(EBRejectCaseRequestModel model) {
    return EBRejectCaseRequestEntity(
      reason: _getReason(model.reason),
      comments: model.comments,
      performerId: model.performerId,
      performerRole: model.performerRole,
      verifiedById: model.verifiedById,
      verifiedByRole: model.verifiedByRole,
    );
  }

  static EBRejectCaseRequestModel mapToModel(EBRejectCaseRequestEntity entity) {
    return EBRejectCaseRequestModel(
      reason: entity.reason.name,
      comments: entity.comments,
      performerId: entity.performerId,
      performerRole: entity.performerRole,
      verifiedById: entity.verifiedById,
      verifiedByRole: entity.verifiedByRole,
    );
  }

  static _getReason(String? reason) {
    const reasons = EBRejectCaseReasonEnum.values;
    for (var i = 0; i < reasons.length; i++) {
      if (reasons[i].name == reason) {
        return reasons[i];
      }
    }
  }
}
