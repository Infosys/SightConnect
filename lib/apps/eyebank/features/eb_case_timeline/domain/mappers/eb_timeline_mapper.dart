import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EBTimelineMapper {
  static List<EBTimelineEntity> mapToEntity(
    List<EBTimelineModel> ebModel,
    EbTimelineConfigModel configModel,
  ) {
    List<EBTimelineEntity> data =
        ebModel.map((m) => _mapModelToEntity(m, configModel)).toList();

    final newConfigModel = configModel.copyWith(
      stages: configModel.stages!
          .where((stage) =>
              !ebModel.any((element) => element.stage == stage.stageName))
          .toList(),
    );

    data.addAll(newConfigModel.stages!
        .map((stage) => _mapStageToEntity(stage, configModel)));

    return data;
  }

  static EBTimelineEntity _mapModelToEntity(
      EBTimelineModel ebModel, EbTimelineConfigModel configModel) {
    return EBTimelineEntity(
      timelineName: configModel.timelineName,
      timelineVersion: configModel.timelineVersion,
      title: _getStageTitle(configModel, ebModel),
      serviceRequestId: ebModel.serviceRequestId,
      stage: _getStageName(ebModel.stage),
      stageVersion: _getStageVersion(ebModel.stage, configModel),
      status: _getCaseStatus(ebModel.status ?? ""),
      initiateDate: ebModel.initiateDate,
      recentUpdatedTime: ebModel.recentUpdated,
      subStages: null,
    );
  }

  static EBTimelineEntity _mapStageToEntity(
      Stage stage, EbTimelineConfigModel configModel) {
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
  }

  static String _getStageTitle(
      EbTimelineConfigModel configModel, EBTimelineModel m) {
    for (var stage in configModel.stages!) {
      if (stage.stageName == m.stage) {
        return m.differentiator != null
            ? "${stage.title} - ${m.differentiator}"
            : stage.title!;
      }
    }
    return "";
  }

  static EBStageName? _getStageName(String? stageName) {
    if (stageName == null) {
      return null;
    }
    for (var stage in EBStageName.values) {
      if (stage.name == stageName) {
        return stage;
      }
    }
    return null;
  }

  static String? _getStageVersion(
      String? stageName, EbTimelineConfigModel configModel) {
    for (var stage in configModel.stages!) {
      if (stage.stageName == stageName) {
        return stage.stageVersion;
      }
    }
    return null;
  }

  static EBStatus _getCaseStatus(String status) {
    for (var s in EBStatus.values) {
      if (s.value == status) {
        return s;
      }
    }
    return EBStatus.UNKNOWN;
  }
}
