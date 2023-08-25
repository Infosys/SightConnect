import 'package:eye_care_for_all/roles/patient/patient_appointment_booking/presentation/pages/patient_appointment_schedule_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/eye_scan_home_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/patient_result_report_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/patient_test_options.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientDashboardProvider = ChangeNotifierProvider(
  (ref) => PatientDashboardProvider(),
);

class PatientDashboardProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<Widget> get pages => _pages;

  final List<Widget> _pages = [
    const PatientHomePage(),
    // const PatientAppointmentSchedulePage(),
    // const EyeScanHomePage(),
    const PatientServicesPage(),
    const PatientTestOptions(),
    const PatientNotificationPage(),
    const PatientProfilePage(),
  ];
}
