// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/data/models/tumbling_models.dart';
// import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../providers/optometritian_report_provider.dart';

// class OptometritianOfflineTumblingReportCard extends ConsumerWidget {
//   const OptometritianOfflineTumblingReportCard({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var eyeModel = ref.watch(tumblingTestProvider);
//     var model = ref.watch(optometritianReportProvider);
//     var urgency = model.visualAcuityUrgency();
//     var tumblingEData = model.getTumblingEData(
//       eyeModel.calculateEyeSight(Eye.right),
//       eyeModel.calculateEyeSight(Eye.left),
//       eyeModel.calculateEyeSight(Eye.both),
//     );

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Acuity Test - Tumbling E",
//             style: applyRobotoFont(
//               fontSize: 16,
//               fontWeight: FontWeight.w800,
//               color: Colors.black,
//             ),
//           ),
//           const SizedBox(height: 10),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
//             child: GridView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               padding: EdgeInsets.zero,
//               itemCount: tumblingEData.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3,
//                 childAspectRatio: 1.4,
//                 crossAxisSpacing: 0,
//                 mainAxisSpacing: 0,
//               ),
//               itemBuilder: (context, index) {
//                 return Container(
//                   padding: EdgeInsets.only(
//                     left: AppSize.width(context) * 0.03,
//                     top: AppSize.height(context) * 0.01,
//                   ),
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: AppColor.black.withOpacity(0.1),
//                     ),
//                   ),
//                   child: Center(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           tumblingEData[index]["eye"],
//                           style: applyRobotoFont(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w400,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         Text(
//                           lookUpSnellenTablefromLogMarValue(
//                               double.parse(tumblingEData[index]["value"])),
//                           style: applyRobotoFont(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w500,
//                             color: tumblingEData[index]["color"],
//                           ),
//                           textAlign: TextAlign.left,
//                         )
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           const SizedBox(
//             height: AppSize.ks,
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Divider(
//               thickness: 1.5,
//             ),
//           ),
//           const SizedBox(
//             height: AppSize.ks,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Category",
//                 style: applyRobotoFont(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w400,
//                   color: Colors.black.withOpacity(0.8),
//                 ),
//               ),
//               const SizedBox(
//                 height: AppSize.ks,
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
//                 width: AppSize.width(context) * 0.35,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: model.getColorOnUrgencyA(urgency),
//                   border: Border.all(
//                     width: 1.5,
//                     color: model.getColorOnUrgencyA(urgency),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     model.getUrgencyTextA(urgency),
//                     style: applyRobotoFont(
//                         fontSize: 16,
//                         color: AppColor.white,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: AppSize.ks),
//         ],
//       ),
//     );
//   }

//   String lookUpSnellenTablefromLogMarValue(double logMar) {
//     switch (logMar) {
//       case 1.0:
//         return "20/200";
//       case 0.6989:
//         return "20/100";
//       case 0.6021:
//         return "20/80";
//       case 0.4947:
//         return "20/62.5";
//       case 0.3979:
//         return "20/50";
//       case 0.3010:
//         return "20/40";
//       case 0.1761:
//         return "20/31.77";
//       case 0.0969:
//         return "20/25";
//       case 0.0:
//         return "20/20";
//       default:
//         return "20/20";
//     }
//   }
// }
