// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/features/common_features/triage/data/contracts/triage_urgency_repository.dart';
// import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
// import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_repository_impl.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// var optometritianReportProvider =
//     ChangeNotifierProvider<OptometritianReportProvider>((ref) {
//   return OptometritianReportProvider(
//     ref.watch(triageUrgencyRepositoryProvider),
//     GlobalKey<NavigatorState>(),
//   );
// });

// class OptometritianReportProvider extends ChangeNotifier {
//   late final TriageUrgencyRepository _triageUrgencyRepository;
//   final GlobalKey<NavigatorState> _scaffoldKey;
//   OptometritianReportProvider(this._triageUrgencyRepository, this._scaffoldKey);
//   GlobalKey<NavigatorState> get scaffoldKey => _scaffoldKey;
//   TriageUrgency calculateTriageUrgency() {
//     return _triageUrgencyRepository.calculateTriageUrgency();
//   }

//   TriageUrgency getQuestionnaireUrgency() {
//     return _triageUrgencyRepository.questionnaireUrgency();
//   }

//   TriageUrgency visualAcuityUrgency() {
//     return _triageUrgencyRepository.visualAcuityUrgency();
//   }

//   Color getColorOnUrgency(Urgency urgency) {
//     return switch (urgency) {
//       Urgency.RED => AppColor.red,
//       Urgency.YELLOW => AppColor.orange,
//       Urgency.GREEN => AppColor.green,
//     };
//   }

//   String getUrgencyText(Urgency urgency) {
//     return switch (urgency) {
//       Urgency.RED => "Urgent Consult",
//       Urgency.YELLOW => "Early Consult",
//       Urgency.GREEN => "Regular Consult",
//     };
//   }

//   Color getColorOnUrgencyA(TriageUrgency urgency) {
//     return switch (urgency) {
//       TriageUrgency.EMERGENCY => AppColor.red,
//       TriageUrgency.PRIORITY => AppColor.orange,
//       TriageUrgency.ROUTINE => AppColor.green,
//     };
//   }

//   String getUrgencyTextA(TriageUrgency urgency) {
//     return switch (urgency) {
//       TriageUrgency.EMERGENCY => "Urgent Consult",
//       TriageUrgency.PRIORITY => "Early Consult",
//       TriageUrgency.ROUTINE => "Regular Consult",
//     };
//   }

//   Color _getChipUrgencyColor(double value) {
//     if (value >= 1) {
//       return AppColor.red;
//     } else if (value >= 0.5) {
//       return AppColor.orange;
//     } else {
//       return AppColor.green;
//     }
//   }

//   List<Map<String, dynamic>> getTumblingEData(
//     double rightEyeSigth,
//     double leftEyeSigth,
//     double bothEyeSigth,
//   ) {
//     return [
//       {
//         "eye": "Right Eye",
//         "value": rightEyeSigth.toString(),
//         "color": _getChipUrgencyColor(rightEyeSigth)
//       },
//       {
//         "eye": "Left Eye",
//         "value": leftEyeSigth.toString(),
//         "color": _getChipUrgencyColor(leftEyeSigth)
//       },
//       {
//         "eye": "Both Eye",
//         "value": bothEyeSigth.toString(),
//         "color": _getChipUrgencyColor(bothEyeSigth)
//       },
//     ];
//   }
// }
