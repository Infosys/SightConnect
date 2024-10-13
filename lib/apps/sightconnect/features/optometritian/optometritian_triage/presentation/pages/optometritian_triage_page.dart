/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
// import 'package:flutter/material.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/svg.dart';

// class OptometritianTriagePage extends StatelessWidget {
//   const OptometritianTriagePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppbar(
//         leadingWidth: 60,
//         titleSpacing: 0.0,
//         centerTitle: false,
//         leadingIcon: InkWell(
//           customBorder: const CircleBorder(),
//           onTap: () {
//             Navigator.of(context).pop();
//           },
//           child: const Icon(CupertinoIcons.chevron_back),
//         ),
//         title: const Text("Let's Start Your Eye Assessment"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           const SizedBox(
//             height: 10,
//           ),
//           Center(
//             child: SvgPicture.asset(
//               'assets/images/eye_assessment.svg',
//               width: AppSize.width(context) * 0.4,
//               height: AppSize.height(context) * 0.19,
//               fit: BoxFit.fill,
//             ),
//           ),
//           Text(
//             "This is easy and we’ll guide you every step of the way! You just need to answer a few simple questions and then we’ll have your visual tests.\n\nYou can ask your eye test expert for assistance at any point.",
//             softWrap: true,
//             style: applyRobotoFont(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           const SizedBox(
//             height: AppSize.ks,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => const TriagePage(),
//                         ),
//                       );
//                     },
//                     child: const Text('I Am Ready'),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const Spacer(),
//           const BrandingWidgetH(),
//         ]),
//       ),
//     );
//   }
// }
