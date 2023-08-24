import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/patient_vision_acuity_test_page.dart';
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
    const Center(
      child: Text('Search'),
    ),
    const PatientVisionAcuityTestPage(),
    const Center(
      child: Text('Profile'),
    ),
    const Center(
      child: Text('Settings'),
    ),
  ];
}
