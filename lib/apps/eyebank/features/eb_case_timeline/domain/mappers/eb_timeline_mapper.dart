import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/main.dart';

class EBTimelineMapper {
  static List<EBTimelineEntity> mapToEntity(
      List<EBTimelineModel> model, EbTimelineConfigModel configModel) {
    logger.d("data inside mapper is $model \n $configModel");
    List<EBTimelineEntity> data = [];
    for (var m in model) {
      data.add(EBTimelineEntity(
        timelineName: configModel.timelineName,
        timelineVersion: configModel.timelineVersion,
        serviceRequestId: m.serviceRequestId,
        stage: _getStageName(m.stage),
        title: m.title,
        stageVersion: _getStageVersion(m.stage, configModel),
        status: _getCaseStatus(m.status ?? ""),
        initiateDate: m.initiateDate,
        recentUpdatedTime: m.recentUpdated,
        subStages: null,
      ));
    }
    logger.f(data);
    final newConfigModel = configModel.copyWith(
      stages: configModel.stages!
          .where((stage) => !model.any((element) {
                logger.i({
                  "element.stage": element.stage,
                  "stage.stageName": stage.stageName
                });
                return element.stage == stage.stageName;
              }))
          .toList(),
    );
    logger.f("newConfigModel: $newConfigModel");

    for (var stage in newConfigModel.stages!) {
      data.add(EBTimelineEntity(
        timelineName: configModel.timelineName,
        timelineVersion: configModel.timelineVersion,
        serviceRequestId: null,
        stage: _getStageName(stage.stageName),
        title: stage.stageName,
        stageVersion: stage.stageVersion,
        status: EBStatus.UNKNOWN,
        initiateDate: null,
        recentUpdatedTime: null,
        subStages: null,
      ));
    }

    return data;
  }

  static _getStageName(String? reason) {
    const reasons = EBStageName.values;
    for (var i = 0; i < reasons.length; i++) {
      if (reasons[i].name == reason) {
        return reasons[i];
      }
    }
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
    const statuses = EBStatus.values;
    for (var i = 0; i < statuses.length; i++) {
      if (statuses[i].value == status) {
        return statuses[i];
      }
    }
    return EBStatus.UNKNOWN;
  }
}
