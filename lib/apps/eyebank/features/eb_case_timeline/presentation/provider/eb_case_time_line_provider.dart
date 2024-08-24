import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../../../../../services/eb_failure.dart';
import '../../../../helpers/data/models/eb_timeline_config_model.dart';
import '../../../../helpers/data/respositories/eb_repository_impl.dart';
import '../../domain/entities/eb_timeline_entity.dart';
import '../../domain/mappers/eb_timeline_mapper.dart';

final ebCaseTimeLineProvider =
    FutureProvider.family<List<EBTimelineEntity>, EbTimlineParams>(
        (ref, data) async {
  final repo = ref.read(ebRepositoryProvider);
  try {
    final timelinesResult = await repo.fetchTimelineByID(data.encounterID);
    // logger.f('timelinesResult: $timelinesResult');
    final stagesResult =
        await repo.fetchTimelineStages(data.timelineName, data.timelineVersion);
    // logger.f('stagesResult: $stagesResult');
    if (timelinesResult.isRight() && stagesResult.isRight()) {
      final timelines = timelinesResult.getOrElse(() => []);
      final stages =
          stagesResult.getOrElse(() => const EbTimelineConfigModel());
      // log(EBTimelineMapper.mapToEntity(timelines, stages).toString());
      return EBTimelineMapper.mapToEntity(timelines, stages);
    } else {
      throw EBServerFailure(
        errorMessage: "failure in fetching timeline",
        errorObject: EBErrorObject(),
      );
    }
  } on EBFailure catch (e) {
    logger.e('EBFailure: $e');
    rethrow;
  } catch (e) {
    logger.e('Error: $e');
    rethrow;
  }
});

class EbTimlineParams {
  final String? encounterID;
  final String timelineName;
  final String? timelineVersion;

  EbTimlineParams({
    this.encounterID,
    this.timelineName = "CORNEA_DONATION",
    this.timelineVersion,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EbTimlineParams &&
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
