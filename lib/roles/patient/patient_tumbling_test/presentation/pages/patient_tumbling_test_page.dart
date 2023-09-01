// import 'dart:async';
// import 'dart:ui';

// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_instructional_video_page.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

// enum TestType { TumblingE, LandoltC }

// class PatientTumblingTestPage extends HookWidget {
//   static const String routeName = "/patient-tumbling-test";

//   const PatientTumblingTestPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     useEffect(() {
//       final timer = Timer(const Duration(milliseconds: 1), () {
//         _showTermsOfUseDialog(context);
//       });

//       return timer.cancel;
//     }, []);

//     var isTumblingE = useState<TestType>(TestType.TumblingE);
//     var isLandoltC = useState<TestType>(TestType.LandoltC);
//     var isSelected = useState<TestType>(TestType.TumblingE);

//     return Scaffold(
//       appBar: CustomAppBar(
//         title: "Vision Acuity Test",
//         showBackButton: false,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.more_vert),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: AppSize.width * 0.1,
//         ),
//         child: ElevatedButton(
//           onPressed: () {
//             if (isSelected.value == TestType.TumblingE) {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       const TumblingTestInstructionalVideoPage(),
//                 ),
//               );
//             } else {
//               //
//             }
//           },
//           child: const Text("Next"),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(AppSize.kspadding),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Visual acuity is a measure of the human eye’s ability to discern spatial details. It is the ability to distinguish letters or symbols on an eye chart at a certain distance",
//               softWrap: true,
//               style: applyRobotoFont(
//                 fontSize: 14,
//               ),
//             ),
//             const SizedBox(height: AppSize.kmheight),
//             Text(
//               "Select the test to be performed",
//               style: applyFiraSansFont(
//                 fontSize: 18,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: AppSize.kmheight),
//             RadioListTile.adaptive(
//               value: isTumblingE.value,
//               groupValue: isSelected.value,
//               dense: true,
//               controlAffinity: ListTileControlAffinity.leading,
//               onChanged: (value) {
//                 isSelected.value = value!;
//               },
//               title: Text(
//                 "Tumbling E",
//                 style: applyRobotoFont(),
//               ),
//             ),
//             RadioListTile.adaptive(
//               value: isLandoltC.value,
//               groupValue: isSelected.value,
//               dense: true,
//               controlAffinity: ListTileControlAffinity.leading,
//               onChanged: (value) {
//                 isSelected.value = value!;
//               },
//               title: Text(
//                 "Landolt C",
//                 style: applyRobotoFont(),
//               ),
//             ),
//             const SizedBox(height: AppSize.kmheight),
//             CheckboxListTile.adaptive(
//               value: false,
//               dense: true,
//               controlAffinity: ListTileControlAffinity.leading,
//               onChanged: (value) {},
//               title: Text(
//                 "Skip the steps to do",
//                 style: applyRobotoFont(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _showTermsOfUseDialog(BuildContext context) {
//     showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return BackdropFilter(
//           filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//           child: AlertDialog(
//             title: Text(
//               'Terms of Use',
//               style: applyFiraSansFont(
//                 fontSize: 18,
//               ),
//             ),
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Legal disclaimer: The content on this application is presented for informational purposes only.\n\nNever disregard professional medical advice from your healthcare provider, or delay in seeking it, because of using this application.\n\nThe developer of this app, cannot be held liable for any damages of any kind related to the usage of this software.\n\nREMEMBER: It’s people who resolve vision problems. Our technology is designed to help them do that. Full terms of use",
//                   style: applyRobotoFont(
//                     fontSize: 14,
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Full terms of use",
//                     style: applyRobotoFont(
//                       fontSize: 14,
//                       decoration: TextDecoration.underline,
//                       color: Theme.of(context).primaryColor,
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: const Text('Accept'),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pop();
//                       },
//                       child: const Text('Decline'),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }



// }
