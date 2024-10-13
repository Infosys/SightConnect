/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/contracts/vg_dashboard_analytics_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_home/data/source/vg_dashboard_analytics_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgDashboardAnalyticsRepository = Provider((ref) =>
    VgDashboardAnalyticsRepositoryImpl(
        ref.read(vgDashboardAnalyticsRemoteSource)));

class VgDashboardAnalyticsRepositoryImpl
    extends VgDashboardAnalyticsRepository {
  VgDashboardAnalyticsRemoteSource remoteDataSource;

  VgDashboardAnalyticsRepositoryImpl(this.remoteDataSource);

  @override
  Future getAnalytics({required int id}) {
    return remoteDataSource.getAnalytics(id: id);
  }
}
