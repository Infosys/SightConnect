/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/contracts/vg_dashboard_analytics_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/repository/vg_dashboard_analytics_repository_impl.dart';
import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianDashboardProvider =
    ChangeNotifierProvider<VisionGuardianDashboardProvider>(
  (ref) => VisionGuardianDashboardProvider(
      ref.watch(vgDashboardAnalyticsRepository)),
);

class VisionGuardianDashboardProvider extends ChangeNotifier {
  int currentIndex = 0;
  bool isVisible = true;
  Map<String, dynamic> analytics = {};
  VgDashboardAnalyticsRepository vgDashboardAnalyticsRepository;
  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void removeEventId() async {
    await SharedPreferenceService.clearEventId();
    notifyListeners();
  }

  ScrollController? scrollController;
  @override
  VisionGuardianDashboardProvider(this.vgDashboardAnalyticsRepository)
      : scrollController = ScrollController() {
    scrollController?.addListener(listen);
  }
  void listen() {
    final direction = scrollController?.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      isVisible = true;
    } else if (direction == ScrollDirection.reverse) {
      isVisible = false;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController?.removeListener(listen);
    scrollController?.dispose();
  }
}
