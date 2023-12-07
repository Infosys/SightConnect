import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../core/constants/app_color.dart';

var triageResultProvider =
    ChangeNotifierProvider.family<TriageResultProvider, TriageResponseModel>(
  (ref, result) {
    final patient = ref.watch(getPatientProfileProvider).asData?.value.profile;
    return TriageResultProvider(result, patient);
  },
);

class TriageResultProvider extends ChangeNotifier {
  final TriageResponseModel _model;
  final ProfileModel? _profile;

  TriageResultProvider(this._model, this._profile);

  ProfileModel get profile => _profile!;

  Map<String, dynamic> getOverallTriageResult() {
    final totalUgency = _model.cummulativeScore!;
    return _setPropertiesByUrgency(totalUgency);
  }

  List<Map<String, dynamic>> getCompleteTriageResultList() {
    return [
      _getQuestionnaireResult(),
      _getAcuityResult(),
      _getEyeScanResult(),
    ];
  }

  Map<String, dynamic> _getQuestionnaireResult() {
    final steps = _model.score!;
    final questionnaireUrgency = steps.map((step) {
      return step[TriageStep.QUESTIONNAIRE]!;
    }).first;

    return _setPropertiesByUrgency(questionnaireUrgency);
  }

  Map<String, dynamic> _getAcuityResult() {
    final steps = _model.score!;
    final acuityUrgency = steps.map((step) {
      return step[TriageStep.OBSERVATION]!;
    }).first;

    return _setPropertiesByUrgency(acuityUrgency);
  }

  Map<String, dynamic> _getEyeScanResult() {
    final steps = _model.score!;
    final eyeScanUrgency = steps.map((step) {
      return step[TriageStep.IMAGING]!;
    }).first;

    return _setPropertiesByUrgency(eyeScanUrgency);
  }

  Map<String, dynamic> _setPropertiesByUrgency(double urgency) {
    if (urgency == 1) {
      return {
        'urgency': TriageUrgency.ROUTINE,
        'color': AppColor.green,
        'icon': Icons.check,
        'backColor': AppColor.lightGreen.withOpacity(0.4),
        'checkColor': AppColor.green,
        "labelText": "Routine Consult",
        "issueInfo": 'The initial assessment shows no major issues. However, as a precaution, you need to consult an eye specialist for a complete evaluation.',
        "state" : "Completed",
      };
    } else if (urgency == 2) {
      return {
        'urgency': TriageUrgency.PRIORITY,
        'color': AppColor.orange,
        'icon': Icons.check,
        'backColor': AppColor.lightOrange.withOpacity(0.4),
        'checkColor': AppColor.orange,
        "labelText": "Early Consult",
        "issueInfo": 'Looks like you are in the early stages of developing eye problems. Consult an eye specialist within 7 days to get your eye problems corrected on time.',
        "state" : "Completed",
      };
    } else if (urgency == 3 ) {
      return {
        'urgency': TriageUrgency.EMERGENCY,
        'color': AppColor.red,
        'icon': Icons.check,
        'backColor': AppColor.lightRed.withOpacity(0.4),
        'checkColor': AppColor.red,
        "message": "Urgent Consult",
        "issueInfo": 'You have some eye conditions that needs urgent treatment.visit the nearest vision center within 48 hours for more details.',
        "state" : "Completed",
      };
    } else {
      return {
        'urgency': TriageUrgency.ROUTINE,
        'color': AppColor.green,
        'icon': Icons.check,
        'backColor': AppColor.lightGreen.withOpacity(0.4),
        'checkColor': AppColor.green,
        "message": "Routine Consult",
        "state" : "Completed",
      };
    }
  }
}
