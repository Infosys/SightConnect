import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/contracts/vg_dashboard_analytics_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/repository/vg_dashboard_analytics_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vgAnalyticsProvider = ChangeNotifierProvider<VgAnalyticsProvider>((ref) {
  return VgAnalyticsProvider(
    vgDashboardAnalyticsRepository: ref.watch(vgDashboardAnalyticsRepository),
  );
});

var getAnalyticsProvider = FutureProvider.autoDispose<Map<String, dynamic>>(
  (ref) async {
    Map<String, dynamic> response =
        await ref.watch(vgDashboardAnalyticsRepository).getAnalytics(id: 3051);
    return response;
  },
);

class VgAnalyticsProvider extends ChangeNotifier {
  Map<String, dynamic> analytics = {};
  VgDashboardAnalyticsRepository vgDashboardAnalyticsRepository;
  var isLoading = false;

  VgAnalyticsProvider({required this.vgDashboardAnalyticsRepository});
}
