import 'dart:math';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../core/constants/app_color.dart';
import '../../../../../../main.dart';

var triageResultProvider = ChangeNotifierProvider.autoDispose
    .family<TriageResultProvider, TriageResponseModel>(
  (ref, result) {
    final patient = ref.watch(getPatientProfileProvider).asData?.value.profile;
    return TriageResultProvider(result, patient);
  },
);

class TriageResultProvider extends ChangeNotifier {
  final TriageResponseModel _model;
  final ProfileModel? _profile;

  TriageResultProvider(this._model, this._profile) {
    logger.d('model is : ${_model.questionResponse}');
  }

  ProfileModel get profile => _profile!;
  double? _questionnaireScore;
  double? _visionAcuityScore;
  double? _eyeScanScore;

  Map<String, dynamic> getOverallTriageResult() {
    getCompleteTriageResultList();
    double totalUrgency =
        _questionnaireScore! + _visionAcuityScore! + _eyeScanScore!;
    logger.d("this is total urgency $totalUrgency");
    logger.d(
        "these are questionnaire, vision acuity and eye scan scores from the overall method call $_questionnaireScore, $_visionAcuityScore, $_eyeScanScore");
    if (totalUrgency > 5) {
      return _setPropertiesByUrgency(3);
    } else if (totalUrgency > 3) {
      return _setPropertiesByUrgency(2);
    } else {
      return _setPropertiesByUrgency(1);
    }
  }

  List<Map<String, dynamic>> getCompleteTriageResultList() {
    return [
      _getQuestionnaireResult(),
      _getAcuityResult(),
      _getEyeScanResult(),
    ];
  }

  Map<String, dynamic> _getQuestionnaireResult() {
    _questionnaireScore = 1;
    for (var questions in _model.questionResponse!) {
      for (var answer in questions.answer!) {
        _questionnaireScore = max(_questionnaireScore!, answer.score!);
      }
      logger.d(
          "this is questionnaire score from inside method call $_questionnaireScore");
    }

    return _setPropertiesByUrgency(_questionnaireScore!.toDouble());
  }

  Map<String, dynamic> _getAcuityResult() {
    _visionAcuityScore = 1;
    for (var observation in _model.observations!) {
      _visionAcuityScore = max(_visionAcuityScore!, observation.score!);
    }
    logger.d(
        "this is vision acuity score from inside method call $_visionAcuityScore");
    return _setPropertiesByUrgency(_visionAcuityScore!.toDouble());
  }

  Map<String, dynamic> _getEyeScanResult() {
    _eyeScanScore = 1;
    for (var observation in _model.imagingSelection!) {
      _eyeScanScore = max(_eyeScanScore!, observation.score!);
    }
    logger.d("this is eye scan score from inside method call $_eyeScanScore");
    return _setPropertiesByUrgency(_eyeScanScore!.toDouble());
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
        "state": "Completed",
        "issueInfo":
            'The initial assessment shows no major issues. However, as a precaution, you need to consult an eye specialist for a complete evaluation.',
      };
    } else if (urgency == 2) {
      return {
        'urgency': TriageUrgency.PRIORITY,
        'color': AppColor.orange,
        'icon': Icons.check,
        'backColor': AppColor.lightOrange.withOpacity(0.4),
        'checkColor': AppColor.orange,
        "labelText": "Routine Consult",
        "state": "Completed",
        "issueInfo":
            'Looks like you are in the early stages of developing eye problems. Consult an eye specialist within 7 days to get your eye problems corrected on time.',
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
        "issueInfo":
            'You have some eye conditions that needs urgent treatment.visit the nearest vision center within 48 hours for more details.',
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
        "issueInfo":
            'Looks like you are in the early stages of developing eye problems. Consult an eye specialist within 7 days to get your eye problems corrected on time.',
      };
    }
  }
}



// import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
// import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
// import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
// import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
// import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
// import 'package:eye_care_for_all/main.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../../../../core/constants/app_color.dart';

// var triageResultProvider =
//     ChangeNotifierProvider.family<TriageResultProvider, TriageResponseModel>(
//   (ref, result) {
//     final patient = ref.watch(getPatientProfileProvider).asData?.value.profile;
//     return TriageResultProvider(result, patient);
//   },
// );

// class TriageResultProvider extends ChangeNotifier {
//   final TriageResponseModel _model;
//   final ProfileModel? _profile;

//   TriageResultProvider(this._model, this._profile) {
//     logger.d({"TriageResultProvider": _model.toString()});
//   }

//   ProfileModel get profile => _profile!;

//   Map<String, dynamic> getOverallTriageResult() {
//     final totalUgency = _model.cummulativeScore ?? 0;
//     return _setPropertiesByUrgency(totalUgency);
//   }

//   List<Map<String, dynamic>> getCompleteTriageResultList() {
//     return [
//       _getQuestionnaireResult(),
//       _getAcuityResult(),
//       _getEyeScanResult(),
//     ];
//   }

//   Map<String, dynamic> _getQuestionnaireResult() {
//     final steps = _model.score ?? [];
//     if (steps.isEmpty) {
//       return {};
//     }
//     final questionnaireUrgency = steps.map((step) {
//       return step[TriageStep.QUESTIONNAIRE]!;
//     }).first;
//     return _setPropertiesByUrgency(questionnaireUrgency);
//   }

//   Map<String, dynamic> _getAcuityResult() {
//     final steps = _model.score ?? [];
//     if (steps.isEmpty) {
//       return {};
//     }

//     final acuityUrgency = steps.map((step) {
//       return step[TriageStep.OBSERVATION]!;
//     }).first;
//     return _setPropertiesByUrgency(acuityUrgency);
//   }

//   Map<String, dynamic> _getEyeScanResult() {
//     final steps = _model.score ?? [];
//     if (steps.isEmpty) {
//       return {};
//     }
//     final eyeScanUrgency = steps.map((step) {
//       return step[TriageStep.IMAGING]!;
//     }).first;

//     return _setPropertiesByUrgency(eyeScanUrgency);
//   }

//   Map<String, dynamic> _setPropertiesByUrgency(double urgency) {
//     return switch (urgency) {
//       1 => {
//           'urgency': TriageUrgency.ROUTINE,
//           'color': AppColor.green,
//           'icon': Icons.check,
//           'backColor': AppColor.lightGreen.withOpacity(0.4),
//           'checkColor': AppColor.green,
//           "labelText": "Routine Consult",
//           "issueInfo":
//               'The initial assessment shows no major issues. However, as a precaution, you need to consult an eye specialist for a complete evaluation.',
//           "state": "Completed",
//         },
//       2 => {
//           'urgency': TriageUrgency.PRIORITY,
//           'color': AppColor.orange,
//           'icon': Icons.check,
//           'backColor': AppColor.lightOrange.withOpacity(0.4),
//           'checkColor': AppColor.orange,
//           "labelText": "Early Consult",
//           "issueInfo":
//               'Looks like you are in the early stages of developing eye problems. Consult an eye specialist within 7 days to get your eye problems corrected on time.',
//           "state": "Completed",
//         },
//       3 => {
//           'urgency': TriageUrgency.EMERGENCY,
//           'color': AppColor.red,
//           'icon': Icons.check,
//           'backColor': AppColor.lightRed.withOpacity(0.4),
//           'checkColor': AppColor.red,
//           "labelText": "Urgent Consult",
//           "issueInfo":
//               'You have some eye conditions that needs urgent treatment.visit the nearest vision center within 48 hours for more details.',
//           "state": "Completed",
//         },
//       _ => {
//           'urgency': TriageUrgency.ROUTINE,
//           'color': AppColor.green,
//           'icon': Icons.check,
//           'backColor': AppColor.lightGreen.withOpacity(0.4),
//           'checkColor': AppColor.green,
//           "message": "Routine Consult",
//           "issueInfo":
//               'The initial assessment shows no major issues. However, as a precaution, you need to consult an eye specialist for a complete evaluation.',
//           "state": "Completed",
//         }
//     };
//   }
// }
