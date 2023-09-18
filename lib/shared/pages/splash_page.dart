import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends ConsumerWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const PatientDashboardPage();

    // ref.listen(authPageProvider, (previous, next) {
    //   if (next.userInfo != null) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(
    //         builder: (context) => const PatientHomePage(),
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

    // return RefreshIndicator(
    //   onRefresh: () async {
    //     ref.invalidate(authPageProvider);
    //   },
    //   child: const Scaffold(
    //     body: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   ),
    // );
  }
}
