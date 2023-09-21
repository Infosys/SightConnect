import 'package:eye_care_for_all/roles/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientHomeProvider = ChangeNotifierProvider(
  (ref) => PatientHomeProvider(),
);

class PatientHomeProvider extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<Widget> pages = [
    const PatientHomePage(),
    const PatientServicesPage(),
    const TumblingTestInitiatePage(),
    const PatientNotificationPage(),
    const SizedBox(),
  ];
}
