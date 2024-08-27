import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
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

  static _getStageName(String? reason) {
    const reasons = EBStageName.values;
    for (var i = 0; i < reasons.length; i++) {
      if (reasons[i].name == reason) {
        return reasons[i];
      }
    }
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





// const sampleJson = [
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "COMPLETED",
//     "assessmentName": "INTIMATION",
//     "stageName": "INTIMATION",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "COMPLETED",
//     "assessmentName": "PRELIMINARY_SCREENING",
//     "stageName": "PRELIMINARY SCREENING",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "COMPLETED",
//     "assessmentName": "CORNEA_RECOVERY",
//     "stageName": "CORNEA RECOVERY",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "COMPLETED",
//     "assessmentName": "SHIPPED_TO_EYEBANK",
//     "stageName": "SHIPPED TO EYEBANK",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "COMPLETED",
//     "assessmentName": "RECEIVED_AT_EYEBANK",
//     "stageName": "RECEIVED AT EYEBANK",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "IN_PROGRESS",
//     "assessmentName": "SEROLOGY",
//     "stageName": "SEROLOGY",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "IN_PROGRESS",
//     "assessmentName": "CORNEA_EVALUATION",
//     "stageName": "CORNEA EVALUATION",
//     "subSteps": [],
//   },
//   {
//     "initiateDate": "2023-10-01T12:00:00Z",
//     "recentUpdatedTime": "2023-10-01T12:00:00Z",
//     "status": "UNKNOWN",
//     "assessmentName": "IN_INVENTORY",
//     "stageName": " IN INVENTORY",
//     "subSteps": [],
//   },
// ];
