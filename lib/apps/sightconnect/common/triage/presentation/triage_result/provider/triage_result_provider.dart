import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';

var triageResultProvider = ChangeNotifierProvider.autoDispose
    .family<TriageResultProvider, TriagePostModel>(
  (ref, result) {
    final id = ref.watch(triageMemberProvider).testPatientId;
    final patient = ref.watch(getPatientProfileByIdProvider(id!)).asData?.value;

    return TriageResultProvider(result, patient?.profile);
  },
);

class TriageResultProvider extends ChangeNotifier {
  final TriagePostModel _model;
  final ProfileModel? _profile;

  TriageResultProvider(this._model, this._profile);
  ProfileModel get profile => _profile!;

  Map<String, dynamic> getOverallTriageResult() {
    Severity? os = _model.cumulativeSeverity;
    double score = _severityToScore(os);

    return _setPropertiesByUrgency(score, _model.diagnosticReportDescription);
  }

  List<Map<String, dynamic>> getCompleteTriageResultList() {
    return [
      _getQuestionnaireResult(),
      _getAcuityResult(),
      _getEyeScanResult(),
    ];
  }

  Map<String, dynamic> _getQuestionnaireResult() {
    double score = 0.0;
    Severity? qs = _model.questionResponseSeverity;
    score = _severityToScore(qs);

    return _setPropertiesByUrgency(
        score.toDouble(), _model.questionResultDescription);
  }

  double _severityToScore(Severity? sevirity) {
    if (sevirity == null) {
      return 0;
    } else if (sevirity == Severity.ABNORMAL) {
      return 3;
    } else if (sevirity == Severity.HIGH) {
      return 2;
    } else {
      return 1;
    }
  }

  Map<String, dynamic> _getAcuityResult() {
    double score = 0.0;
    Severity? vs = _model.observationSeverity;
    score = _severityToScore(vs);

    return _setPropertiesByUrgency(score, _model.observationResultDescription);
  }

  Map<String, dynamic> _getEyeScanResult() {
    double score = 0.0;
    Severity? ms = _model.mediaSeverity;
    score = _severityToScore(ms);

    return _setPropertiesByUrgency(
        score.toDouble(), _model.mediaResultDescription);
  }

  Map<String, dynamic> _setPropertiesByUrgency(
    double urgency,
    String? description,
  ) {
    if (urgency == 1) {
      return {
        'urgency': TriageUrgency.ROUTINE,
        'color': AppColor.green,
        'icon': Icons.check,
        'backColor': AppColor.lightGreen.withOpacity(0.4),
        'checkColor': AppColor.green,
        "labelText": "Routine Consult",
        "state": "Completed",
        "issueInfo": description ?? "",
      };
    } else if (urgency == 2) {
      return {
        'urgency': TriageUrgency.PRIORITY,
        'color': AppColor.orange,
        'icon': Icons.check,
        'backColor': AppColor.lightOrange.withOpacity(0.4),
        'checkColor': AppColor.orange,
        "labelText": "Early Consult",
        "state": "Completed",
        "issueInfo": description ?? "",
      };
    } else if (urgency == 3) {
      return {
        'urgency': TriageUrgency.EMERGENCY,
        'color': AppColor.red,
        'icon': Icons.check,
        'backColor': AppColor.lightRed.withOpacity(0.4),
        'checkColor': AppColor.red,
        "labelText": "Urgent Consult",
        "state": "Completed",
        "issueInfo": description ?? "",
      };
    } else {
      return {
        'urgency': TriageUrgency.ROUTINE,
        'color': AppColor.green,
        'icon': Icons.check,
        'backColor': AppColor.lightGreen.withOpacity(0.4),
        'checkColor': AppColor.green,
        "labelText": "Routine Consult",
        "state": "Completed",
        "issueInfo": description ?? "",
      };
    }
  }
}
