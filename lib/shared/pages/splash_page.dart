import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // get user profile
    // role based navigation
    if (role == ROLE.PATIENT) {
      return const PatientHomePage();
    } else {
      return const AuthPage();
    }
  }
}
