import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/eb_organ_inventory_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/repository/eb_organ_inventory_repo.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../../../../../services/eb_failure.dart';
import '../../../../helpers/data/models/eb_timeline_config_model.dart';
import '../../../../helpers/data/respositories/eb_repository_impl.dart';

final ebOrganTimelineProvider = FutureProvider.family
    .autoDispose<List<EBTimelineEntity>, EbOrganTimlineParams>(
        (ref, data) async {
  final repo = ref.read(ebRepositoryProvider);
  try {
    final stagesResult =
        await repo.fetchTimelineStages(data.timelineName, data.timelineVersion);

    final stages = stagesResult.getOrElse(() => const EbTimelineConfigModel());
    logger.i(stages.toJson());
    return EBOrganMapper.mapToEntity(stages);
  } on EBFailure catch (e) {
    logger.e('EBFailure: $e');
    rethrow;
  } catch (e) {
    logger.e('Error: $e');
    rethrow;
  }
});

class EBOrganMapper {
  static List<EBTimelineEntity> mapToEntity(EbTimelineConfigModel configModel) {
    if (configModel.stages == null) {
      return [];
    }
    return configModel.stages!.map((stage) {
      return EBTimelineEntity(
        timelineName: configModel.timelineName,
        timelineVersion: configModel.timelineVersion,
        serviceRequestId: null,
        stage: _getStageName(stage.stageName),
        title: stage.title,
        stageVersion: stage.stageVersion,
        status: EBStatus.UNKNOWN,
        initiateDate: null,
        recentUpdatedTime: null,
        subStages: null,
      );
    }).toList();
  }

  static EBStageName? _getStageName(String? stageName) {
    const stages = EBStageName.values;
    for (var i = 0; i < stages.length; i++) {
      if (stages[i].name == stageName) {
        return stages[i];
      }
    }
    return null;
  }
}

class EbOrganTimlineParams {
  final String? encounterID;
  final String timelineName;
  final String? timelineVersion;

  EbOrganTimlineParams({
    this.encounterID,
    this.timelineName = "CORNEA_TRANSPLANT",
    this.timelineVersion,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EbOrganTimlineParams &&
        other.encounterID == encounterID &&
        other.timelineVersion == timelineVersion;
  }

  @override
  int get hashCode => encounterID.hashCode ^ timelineVersion.hashCode;
}

final ebOrganInventoryAnalyticsProvder =
    FutureProvider.autoDispose<EbOrganInventoryAnalyticsModel>((ref) async {
  final repository = ref.watch(ebOrganInventoryRepositoryProvider);
  final result = await repository.getOrganInventoryStatistics();
  return result.fold(
    (l) => throw l,
    (r) => r,
  );
});
