// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/core/models/patient_response_model.dart';
// import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
// import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
// import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/providers/book_appointment_provider.dart';
// import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/check_container.dart';
// import 'package:eye_care_for_all/main.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
// import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class BookAppointmentPatientSelector extends ConsumerWidget {
//   const BookAppointmentPatientSelector({
//     super.key,
//     required this.relations,
//     required this.patient,
//   });
//   final List<RelatedPartyModel> relations;
//   final PatientResponseModel patient;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final loc = context.loc!;
//     final model =
//         ref.watch(bookAppointmentProvider(patient.profile?.patient?.patientId));
//     final isActive =
//         model.selectedPatientId == patient.profile?.patient?.patientId;

//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Select Patient",
//           style: applyFiraSansFont(fontSize: 18),
//         ),
//         const SizedBox(height: AppSize.km),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             InkWell(
//               customBorder: const CircleBorder(),
//               onTap: () {
//                 final id = patient.profile?.patient?.patientId;
//                 if (id != null) {
//                   model.setPatientId(id);
//                 }
//               },
//               child: CheckContainer(
//                 patient: patient,
//                 isSelected: isActive,
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ...relations.map(
//                     (data) {
//                       final isRelativeActive =
//                           model.selectedPatientId == data.patientId;
//                       return InkWell(
//                         customBorder: const CircleBorder(),
//                         onTap: () {
//                           model.setPatientId(data.patientId!);
//                         },
//                         child: CheckContainer(
//                           patient: patient,
//                           isSelected: isRelativeActive,
//                         ),
//                         // Container(
//                         //   width: 60,
//                         //   padding: const EdgeInsets.only(right: AppSize.km),
//                         //   child: Column(
//                         //     mainAxisSize: MainAxisSize.min,
//                         //     children: [
//                         //       data.profilePicture != null
//                         //           ? Container(
//                         //               decoration: BoxDecoration(
//                         //                 shape: BoxShape.circle,
//                         //                 border: isRelativeActive
//                         //                     ? Border.all(
//                         //                         color: AppColor.blue,
//                         //                         width: 3,
//                         //                       )
//                         //                     : null,
//                         //               ),
//                         //               child: AppNetworkImage(
//                         //                 imageUrl: Uri.tryParse(data.profilePicture!)
//                         //                     .toString(),
//                         //               ),
//                         //             )
//                         //           : Container(
//                         //               decoration: BoxDecoration(
//                         //                 shape: BoxShape.circle,
//                         //                 border: isRelativeActive
//                         //                     ? Border.all(
//                         //                         color: AppColor.blue,
//                         //                         width: 3,
//                         //                       )
//                         //                     : null,
//                         //               ),
//                         //               child: AppNameAvatar(
//                         //                 name: data.name ?? "",
//                         //                 radius: 20,
//                         //               ),
//                         //             ),
//                         //       const SizedBox(height: 4),
//                         //       Text(
//                         //         data.name ?? "",
//                         //         maxLines: 1,
//                         //         overflow: TextOverflow.ellipsis,
//                         //         style: applyRobotoFont(
//                         //           fontSize: 10,
//                         //         ),
//                         //       )
//                         //     ],
//                         //   ),
//                         // ),
//                       );
//                     },
//                   ).toList(),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 40,
//               child: VerticalDivider(
//                 thickness: 2,
//                 width: AppSize.kl,
//                 color: AppColor.lightGrey,
//               ),
//             ),
//             Consumer(
//               builder: (context, ref, child) => InkWell(
//                 customBorder: const CircleBorder(),
//                 onTap: () {
//                   try {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => PatientRegistrationMiniappPage(
//                           actionType: MiniAppActionType.ADD_MEMBER,
//                           displayName: loc.myConnectionsAddMember,
//                         ),
//                       ),
//                     ).then(
//                       (value) {
//                         logger.d({"Profile Page add Miniapp": value});
//                         if (value == null || value == false) {
//                           Fluttertoast.showToast(
//                               msg: "Family member not added");
//                         } else if (value) {
//                           Fluttertoast.showToast(msg: "Family member added");
//                           ref.invalidate(getPatientProfileProvider);
//                         }
//                       },
//                     );
//                   } catch (e) {
//                     logger.d({"error": e});
//                     Fluttertoast.showToast(
//                       msg: loc.myConnectionsServiceNotAvailable,
//                     );
//                   }
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white,
//                         border: Border.all(
//                           color: AppColor.blue,
//                           width: 1,
//                         ),
//                       ),
//                       child: const Icon(
//                         Icons.add,
//                         size: 20,
//                         color: AppColor.blue,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       loc.myConnectionsAddMember,
//                       style: applyRobotoFont(
//                         fontSize: 10,
//                         color: AppColor.blue,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
          
//           ],
//         ),
//       ],
//     );
//   }
// }
