import 'package:eye_care_for_all/apps/eyebank/features/eb_home/data/models/eb_home_stage_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/data/repository/eb_home_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final stageAnalyticsProvider =
    FutureProvider.autoDispose<List<EbHomeStageAnalyticsModel>>((ref) async {
  const String timelineName = 'CORNEA_DONATION';

  final repository = ref.watch(ebHomeRepositoryProvider);

  final result = await repository.getEyeBankStageStatistics(timelineName);

  return result.fold(
    (l) => throw l,
    (r) => r,
  );
});
