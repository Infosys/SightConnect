// import 'package:eye_care_for_all/app_environment.dart';
// import 'package:eye_care_for_all/core/constants/app_color.dart';
// import 'package:eye_care_for_all/core/constants/app_icon.dart';
// import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/core/constants/app_text.dart';
// import 'package:eye_care_for_all/features/patient/patient_profile/presentation/widgets/white_field_box.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:eye_care_for_all/shared/theme/text_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../provider/patient_registration_provider.dart';
// import '../widgets/gender_radio_button.dart';

// class PatientRegistrationPage extends ConsumerWidget {
//   const PatientRegistrationPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final model = ref.watch(patientRegistrationProvider);

//     return Form(
//       autovalidateMode: AutovalidateMode.onUserInteraction,
//       child: Builder(builder: (context) {
//         return Scaffold(
//           resizeToAvoidBottomInset: false,
//           bottomNavigationBar: Padding(
//             padding: const EdgeInsets.all(AppSize.kmpadding),
//             child: model.isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : ElevatedButton(
//                     onPressed: () {
//                       if (Form.of(context).validate()) {
//                         if (AppEnv.isDev) {
//                           return;
//                         }
//                         model.registerPatient();
//                       }
//                     },
//                     child: const Text('Continue'),
//                   ),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: AppSize.height(context) * 0.4,
//                   width: AppSize.width(context),
//                   decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(30),
//                       bottomRight: Radius.circular(30),
//                     ),
//                     color: AppColor.primary,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       const SizedBox(height: 40),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                         child: Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.all(5),
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: AppColor.white,
//                               ),
//                               child: SvgPicture.asset(
//                                 AppIcon.logo,
//                                 height: 20,
//                                 width: 20,
//                               ),
//                             ),
//                             const SizedBox(
//                               width: AppSize.kmpadding,
//                             ),
//                             Text(
//                               AppText.appName,
//                               style: applyFiraSansFont(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Image.asset('assets/images/login.png'),
//                       ),
//                       const Row(
//                         children: [
//                           SizedBox(width: 20),
//                           Text(
//                             'Sign Up',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 40,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(AppSize.kmpadding),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       WhiteFieldBox(
//                         child: TextFormField(
//                           onChanged: (value) {
//                             model.setName = value;
//                           },
//                           validator: model.validateName,
//                           decoration: InputDecoration(
//                             hintText: 'Name',
//                             hintStyle: applyRobotoFont(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: AppSize.klheight),
//                       InkWell(
//                         onTap: () async {
//                           final date = await showDatePicker(
//                             context: context,
//                             initialDate: DateTime.now(),
//                             firstDate: DateTime(1900),
//                             lastDate: DateTime.now(),
//                           );
//                           if (date != null) {
//                             model.setDateOfBirth = date;
//                           }
//                         },
//                         child: WhiteFieldBox(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   model.dateOfBirth.formateDate.isEmpty
//                                       ? 'Date of Birth'
//                                       : model.dateOfBirth.formateDate,
//                                   style: applyRobotoFont(
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: AppSize.klwidth,
//                                 ),
//                                 const Icon(Icons.calendar_today_outlined)
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: AppSize.klheight),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Flexible(
//                             child: GenderRadioButton(
//                               label: "Male",
//                               value: "MALE",
//                               groupValue: model.gender,
//                               onChanged: (value) {
//                                 if (value != null) {
//                                   model.setGender = value;
//                                 }
//                               },
//                             ),
//                           ),
//                           Flexible(
//                             child: GenderRadioButton(
//                               label: "Female",
//                               value: "FEMALE",
//                               groupValue: model.gender,
//                               onChanged: (value) {
//                                 if (value != null) {
//                                   model.setGender = value;
//                                 }
//                               },
//                             ),
//                           ),
//                           Flexible(
//                             child: GenderRadioButton(
//                               label: "Others",
//                               value: "OTHERS",
//                               groupValue: model.gender,
//                               onChanged: (value) {
//                                 if (value != null) {
//                                   model.setGender = value;
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: AppSize.klheight),
//                       WhiteFieldBox(
//                         child: TextFormField(
//                           onChanged: (value) {
//                             model.setMobileNumber = value;
//                           },
//                           validator: model.validateMobileNumber,
//                           keyboardType: TextInputType.phone,
//                           decoration: InputDecoration(
//                             hintText: 'Mobile Number',
//                             hintStyle: applyRobotoFont(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: AppSize.klheight),
//                       WhiteFieldBox(
//                         child: TextFormField(
//                           onChanged: (value) {
//                             model.setPincode = value;
//                           },
//                           validator: model.validatePincode,
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                             hintText: 'Pincode (Optional)',
//                             hintStyle: applyRobotoFont(
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: AppSize.klheight),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text("Already have an account?"),
//                           const SizedBox(width: AppSize.klwidth),
//                           InkWell(
//                             onTap: () {},
//                             child: const Text(
//                               "Login",
//                               style: TextStyle(
//                                 color: AppColor.primary,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: AppSize.ksheight),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
