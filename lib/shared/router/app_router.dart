import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_report_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_scan_instructions_page.dart';

import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_e_steps_instruction_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Map<String, Widget Function(BuildContext)> routes = {
    SplashPage.routeName: (context) => const SplashPage(),
    // AuthPage.routeName: (context) => const AuthPage(),
    PatientEyeScanInstructionsPage.routeName: (context) =>
        const PatientEyeScanInstructionsPage(),
    PatientEyesReportPage.routeName: (context) => const PatientEyesReportPage(),
    TumblingEStepsInstructionsPage.routeName: (context) =>
        const TumblingEStepsInstructionsPage(),
    TumblingTestInitiatePage.routeName: (context) =>
        const TumblingTestInitiatePage(),
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return null;
  }
}
