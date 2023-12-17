import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/pages/vision_technician_ivr_call_history_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/pages/vision_technician_mark_my_availability_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/pages/vision_technician_register_new_patient_page.dart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';

var visionTechnicianDashboardProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianDashboardProvider());

class VisionTechnicianDashboardProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> get pages => _pages;

  final List<Widget> _pages = [
    const VisionTechnicianHomePage(),
    const SizedBox(),
    const VisionTechnicianPreliminaryAssessmentPage(),
    const VisionTechnicianMarkMyAvailabilityPage(),
    const VisionTechnicianIvrCallHistory(),
  ];

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
