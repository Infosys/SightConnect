import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/patient_info.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage_response.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/visual_acuity_report.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/timestamp_converter.dart';
import '../enums/triage_enums.dart';
import 'follow_up.dart';

part 'triage.freezed.dart';

part 'triage.g.dart';

@freezed
class Triage with _$Triage {
  const factory Triage({
    required int id,
    PatientInfo? patientInfo,
    PatientInfo? facilityInfo,
    PatientInfo? healthWorkerInfo,
    @Default(TriageStatus.OPEN) TriageStatus status,
    @TimestampConverter() DateTime? startedOn,
    @TimestampConverter() DateTime? closedOn,
    bool? isDeleted,
    int? sequence,
    @Default(TriageSource.SELF) TriageSource source,
    @Default(TriageAction.NO_ACTION) TriageAction action,
    @Default(TriageUrgency.ROUTINE) TriageUrgency urgency,
    @Default(TriageReason.OTHERS) TriageReason reason,
    String? statusRemark,
    int? statusChangedBy,
    TriageResponse? triageResponse,
    VisualAcuityReport? visualAcuityReport,
    FollowUp? followUp,
    List<String>? leftEyeImage,
    List<String>? rightEyeImage,
    List<String>? bothEyeImage,
  }) = _Triage;

  factory Triage.fromJson(Map<String, Object?> json) => _$TriageFromJson(json);
}
