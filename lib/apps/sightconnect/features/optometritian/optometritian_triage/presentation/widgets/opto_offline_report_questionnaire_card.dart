/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
// import 'package:eye_care_for_all/features/optometritian/optometritian_triage/presentation/providers/optometritian_report_provider.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'package:eye_care_for_all/main.dart';

// class OptometritianOfflineReportQuestionnaireCard extends ConsumerWidget {
//   const OptometritianOfflineReportQuestionnaireCard({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var model = ref.watch(optometritianReportProvider);
//     var urgency = model.getQuestionnaireUrgency();
//     List<Map<String, dynamic>> data =
//         ref.watch(triageQuestionnaireProvider).questionnaireForReportPage;

//     var remarksData =
//         ref.watch(triageQuestionnaireProvider).questionnaireRemarks;

//    logger.d("data in the house : $data");

//     return Container(
//       color: AppColor.white,
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Assessment Questions",
//             style: applyRobotoFont(
//               fontSize: 16,
//               fontWeight: FontWeight.w800,
//               color: Colors.black,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ListView.builder(
//             itemCount: data.length,
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemBuilder: (BuildContext context, int index) {
//               var currentData = data[index];
//               return index > 0
//                   ? Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           currentData['question'],
//                           style: applyRobotoFont(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400,
//                             color: Colors.black.withOpacity(0.8),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         for (var i = 0; i < currentData['answer'].length; i++)
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 8.0, vertical: 2),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Text(
//                                   "\u2022  ",
//                                   style: applyRobotoFont(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black.withOpacity(0.7),
//                                       height: 1.5),
//                                 ),
//                                 Flexible(
//                                   child: Text(
//                                     currentData['answer'][i],
//                                     softWrap: true,
//                                     style: applyRobotoFont(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w800,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         currentData['answer'].length == 0
//                             ? Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 8.0, vertical: 2),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Text(
//                                       "\u2022  ",
//                                       style: applyRobotoFont(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w400,
//                                           color: Colors.black.withOpacity(0.7),
//                                           height: 1.5),
//                                     ),
//                                     Flexible(
//                                       child: Text(
//                                         "No Symptoms",
//                                         softWrap: true,
//                                         style: applyRobotoFont(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w800,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             : const SizedBox(),
//                         const Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 10),
//                           child: Divider(
//                             thickness: 1.5,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                       ],
//                     )
//                   : const SizedBox();
//             },
//           ),
//           remarksData.isEmpty
//               ? const SizedBox()
//               : Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Other Symptoms",
//                       style: applyRobotoFont(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black.withOpacity(0.8),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: AppSize.ks,
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "\u2022  ",
//                           style: applyRobotoFont(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w400,
//                               color: Colors.black.withOpacity(0.7),
//                               height: 1.5),
//                         ),
//                         Text(
//                           remarksData,
//                           softWrap: true,
//                           style: applyRobotoFont(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w800,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Divider(
//                         thickness: 1.5,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: AppSize.ks,
//                     ),
//                   ],
//                 ),
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
//                       fontSize: 16,
//                       color: AppColor.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
