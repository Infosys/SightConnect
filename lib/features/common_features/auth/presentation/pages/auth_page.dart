// import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
// import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
// import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/splash_page.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../provider/user_details_provider.dart';

// class AuthPage extends ConsumerWidget {
//   static const String routeName = '/auth';
//   const AuthPage({super.key});

//   final role = Role.optometrist;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // ref.listen(authProvider, (previous, next) {
//     //   if (next.userInfo != null) {
//     //     Navigator.of(context).pushAndRemoveUntil(
//     //       MaterialPageRoute(
//     //         builder: (context) => const PatientDashboardPage(),
//     //       ),
//     //       (route) => false,
//     //     );
//     //   } else {
//     //     ScaffoldMessenger.of(context).showSnackBar(
//     //       const SnackBar(
//     //         content: Text('Authentication failed'),
//     //       ),
//     //     );
//     //   }
//     // });

//     return const SplashPage();
//   }
// }

// enum Role { patient, doctor, visionguardian, optometrist }
