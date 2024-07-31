import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/presentation/pages/vision_technician_ivr_call_history_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/presentation/pages/vision_technician_mark_my_availability_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
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
    MiniAppDisplayPage(
      token: PersistentAuthStateService.authState.accessToken ?? "",
      miniapp: MiniApp(
        id: "1",
        version: "1",
        name: "Register Patient",
        displayName: "Register Patient",
        sourceurl: "assets/miniapps/vt_register_patient.zip",
      ),
    ),
    const VisionTechnicianPreliminaryAssessmentPage(),
    const VisionTechnicianMarkMyAvailabilityPage(),
    const VisionTechnicianIvrCallHistory(),
  ];

  void changeIndex(int index) {
    _currentIndex = index;
    logger.d(_currentIndex);
    notifyListeners();
  }
}
