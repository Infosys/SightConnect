import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/optometritian_dashboard_page.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/user_details_provider.dart';

class AuthPage extends ConsumerWidget {
  static const String routeName = '/auth';
  const AuthPage({super.key});

  final role = Role.visionguardian;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(userDetailsProvider, (previous, next) async {
      var profile = next.userProfile;
      if (profile != null) {
        switch (role) {
          case Role.patient:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const PatientDashboardPage(),
              ),
              (route) => false,
            );
            break;
          case Role.doctor:
            break;
          case Role.visionguardian:
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const OptometritianDashboardPage(),
              ),
              (route) => false,
            );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Authentication failed'),
          ),
        );
      }
    });

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

    return const SplashPage();
  }
}

enum Role { patient, doctor, visionguardian }
