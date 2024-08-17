import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';

class EBRejectCaseRequestEntity {
  EBRejectCaseReasonEnum reason;
  String? comments;
  String? performerId;
  String? performerRole;
  String? verifiedById;
  String? verifiedByRole;

  EBRejectCaseRequestEntity({
    required this.reason,
    this.comments,
    this.performerId,
    this.performerRole,
    this.verifiedById,
    this.verifiedByRole,
  });
  @override
  String toString() {
    return 'EBRejectCaseRequestEntity(reason: $reason, comments: $comments, performerId: $performerId, performerRole: $performerRole, verifiedById: $verifiedById, verifiedByRole: $verifiedByRole)';
  }
}
