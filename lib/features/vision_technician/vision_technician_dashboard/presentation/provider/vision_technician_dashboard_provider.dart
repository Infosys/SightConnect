import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/pages/vision_technician_register_new_patient_page.dart.dart';
// import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/pages/vision_technician_register_new_patient_page.dart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianDashboardProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianDashboardProvider());

class VisionTechnicianDashboardProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> get pages => _pages;

  final List<Widget> _pages = [
    const VisionTechnicianHomePage(),
    VisionTechnicianRegisterNewPatientPage(),
    VisionTechnicianCloseAssessmentPage(),
    SizedBox(),
  ];

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
