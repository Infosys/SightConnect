import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // user profile get
    // role decide and naviagtion
    if (role == ROLE.PATIENT) {
      return const PatientDashboardPage();
    } else {
      return const AuthPage();
    }
  }
}
