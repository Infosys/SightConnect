import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/contracts/vg_dashboard_analytics_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/source/vg_dashboard_analytics_remote_source.dart';
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
