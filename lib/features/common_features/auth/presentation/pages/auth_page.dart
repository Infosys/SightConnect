import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPage extends ConsumerWidget {
  static const String routeName = '/auth';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const PatientDashboardPage();

    // ref.listen(authProvider, (previous, next) {
    //   if (next.userInfo != null) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(
    //         builder: (context) => const PatientDashboardPage(),
    //       ),
    //       (route) => false,
    //     );
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //         content: Text('Authentication failed'),
    //       ),
    //     );
    //   }
    // });

    // return const SplashPage();
  }
}
