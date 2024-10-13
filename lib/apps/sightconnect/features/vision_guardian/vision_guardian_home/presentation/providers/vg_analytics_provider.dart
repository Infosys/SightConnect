/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/contracts/vg_dashboard_analytics_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/repository/vg_dashboard_analytics_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_guardian_add_event/presentation/providers/vg_user_data_provider.dart';

final vgAnalyticsProvider = ChangeNotifierProvider<VgAnalyticsProvider>((ref) {
  return VgAnalyticsProvider(
    vgDashboardAnalyticsRepository: ref.watch(vgDashboardAnalyticsRepository),
  );
});

var getAnalyticsProvider = FutureProvider.autoDispose<Map<String, dynamic>>(
  (ref) async {
    Map<String, dynamic> response = await ref
        .watch(vgDashboardAnalyticsRepository)
        .getAnalytics(id: ref.read(vgUserDataProvider).getUserId ?? 0);
    return response;
  },
);

class VgAnalyticsProvider extends ChangeNotifier {
  Map<String, dynamic> analytics = {};
  VgDashboardAnalyticsRepository vgDashboardAnalyticsRepository;
  var isLoading = false;

  VgAnalyticsProvider({required this.vgDashboardAnalyticsRepository});
}
