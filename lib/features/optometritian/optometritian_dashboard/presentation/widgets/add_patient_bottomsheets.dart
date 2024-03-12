// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// var bottomSheetProvider =
//     ChangeNotifierProvider((ref) => AddPatientBottomSheets());

// class AddPatientBottomSheets extends ChangeNotifier {
//   String? selectedEducationalQualification;
//   String? selectedProfession;

//   final educationalQualifications = [
//     'Not applicable (Children <= 5years)',
//     'No Education',
//     'High School',
//     'Primary Education (Class 1 - 5)',
//     'High School (Class 6 - 10)',
//     'Intermediate (Class 11 - 12)',
//     'College (Undergraduate)',
//     'Advance Studies (PG etc)',
//     'Others (Please specify)'
//   ];

//   final professions = [
//     'Not applicable (Children <= 5 years)',
//     'Student / trainee',
//     'Employed with regular emoluments',
//     'Skilled Labour (Carpenter / Goldsmith etc)',
//     'Unskilled Labour (Construction/ Industry etc)',
//     'Self Enterprise / Business / Vendor',
//     'Land property owner not doing job for remuneration',
//     'Agriculture',
//     'Unemployed/ Home duties/ Retired/stopped due to Old age',
//     'Others (Please specify)',
//   ];

//   // final _educationalQualificationController = TextEditingController();
//   // final _professionController = TextEditingController();

//   // String get professionController => _professionController.text;
//   // String get educationalQualificationController =>
//   //     _educationalQualificationController.text;

//   void showOtherQualificationBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       backgroundColor: Colors.transparent,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder:
//               (BuildContext context, void Function(void Function()) setState) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(AppSize.kl),
//               child: Container(
//                 padding: const EdgeInsets.all(18),
//                 decoration: BoxDecoration(
//                   color: AppColor.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 height: AppSize.height(context) * 0.7,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Other Qualifications",
//                       style: applyRobotoFont(
//                         fontSize: 16,
//                         color: AppColor.black,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       padding: const EdgeInsets.all(12.0),
//                       color: const Color(0xFFFAFAFA),
//                       child: TextField(
//                         maxLines: 6,
//                         keyboardType: TextInputType.text,
//                         onSubmitted: (value) {
//                           _educationalQualificationController.text = value;
//                           setState(() {});
//                           Navigator.pop(context);
//                         },
//                         decoration: InputDecoration(
//                             hintText: 'Enter details here',
//                             hintStyle: applyRobotoFont(
//                                 fontSize: 14,
//                                 color: AppColor.grey.withOpacity(0.4))),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   void showOtherProfessionBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       context: context,
//       backgroundColor: Colors.transparent,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//           builder:
//               (BuildContext context, void Function(void Function()) setState) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(AppSize.kl),
//               child: Container(
//                 padding: const EdgeInsets.all(18),
//                 decoration: BoxDecoration(
//                   color: AppColor.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 height: AppSize.height(context) * 0.7,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Other Profession",
//                         style: applyRobotoFont(
//                             fontSize: 16,
//                             color: AppColor.black,
//                             fontWeight: FontWeight.w500)),
//                     const SizedBox(height: 10),
//                     Container(
//                       padding: const EdgeInsets.all(12.0),
//                       color: const Color(0xFFFAFAFA),
//                       child: TextField(
//                         maxLines: 6,
//                         keyboardType: TextInputType.text,
//                         onSubmitted: (value) {
//                           _professionController.text = value;
//                           setState(() {});
//                           Navigator.pop(context);
//                         },
//                         decoration: InputDecoration(
//                             hintText: 'Enter details here',
//                             hintStyle: applyRobotoFont(
//                                 fontSize: 14,
//                                 color: AppColor.grey.withOpacity(0.4))),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   void showEducationalQualificationBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       useSafeArea: true,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       showDragHandle: true,
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(builder:
//             (BuildContext context, void Function(void Function()) setState) {
//           return Container(
//             height: AppSize.height(context) * 0.6,
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Educational Qualification",
//                   style: applyRobotoFont(
//                       fontSize: 16, fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: AppSize.km),
//                 SizedBox(
//                   height: AppSize.height(context) * 0.4,
//                   child: ListView.builder(
//                     itemCount: educationalQualifications.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       final educationalQualification =
//                           educationalQualifications[index];
//                       return RadioListTile<String>(
//                         toggleable: true,
//                         visualDensity: const VisualDensity(vertical: -2),
//                         contentPadding: EdgeInsets.zero,
//                         title: Text(educationalQualification),
//                         value: educationalQualification,
//                         groupValue: selectedEducationalQualification,
//                         onChanged: (value) {
//                           selectedEducationalQualification = value;
//                           if (value == "Others (Please specify)") {
//                             Navigator.pop(context);
//                             showOtherQualificationBottomSheet(context);
//                           }
//                           setState(() {});
//                         },
//                       );
//                     },
//                   ),
//                 ),
//                 const Spacer(),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             _educationalQualificationController.text =
//                                 selectedEducationalQualification!;
//                             Navigator.pop(context);
//                           },
//                           child: const Text("Update"),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         });
//       },
//     );
//   }

//   void showProfessionBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//       useSafeArea: true,
//       isScrollControlled: true,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(40),
//           topRight: Radius.circular(40),
//         ),
//       ),
//       showDragHandle: true,
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(builder:
//             (BuildContext context, void Function(void Function()) setState) {
//           return Container(
//             height: AppSize.height(context) * 0.6,
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Profession",
//                   style: applyRobotoFont(
//                       fontSize: 16, fontWeight: FontWeight.w500),
//                 ),
//                 const SizedBox(height: AppSize.km),
//                 SizedBox(
//                   height: AppSize.height(context) * 0.4,
//                   child: ListView.builder(
//                     itemCount: professions.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       final proffesion = professions[index];
//                       return RadioListTile<String>(
//                         toggleable: true,
//                         visualDensity: const VisualDensity(vertical: -2),
//                         contentPadding: EdgeInsets.zero,
//                         title: Text(proffesion),
//                         value: proffesion,
//                         groupValue: selectedProfession,
//                         onChanged: (value) {
//                           selectedProfession = value;
//                           if (value == "Others (Please specify)") {
//                             Navigator.pop(context);
//                             showOtherProfessionBottomSheet(context);
//                           }
//                           setState(() {});
//                         },
//                       );
//                     },
//                   ),
//                 ),
//                 const Spacer(),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: ElevatedButton(
//                           onPressed: () {
//                             _professionController.text = selectedProfession!;
//                             Navigator.pop(context);
//                           },
//                           child: const Text("Update"),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         });
//       },
//     );
//   }
// }