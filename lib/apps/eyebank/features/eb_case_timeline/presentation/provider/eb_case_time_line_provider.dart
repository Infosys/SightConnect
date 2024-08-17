import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../../../../../services/eb_failure.dart';
import '../../../../helpers/data/models/eb_timeline_config_model.dart';
import '../../../../helpers/data/respositories/eb_repository_impl.dart';
import '../../data/models/eb_time_line_case_model.dart';
import '../../domain/entities/eb_timeline_entity.dart';
import '../../domain/mappers/eb_timeline_mapper.dart';

final ebCaseTimeLineProvider =
    FutureProvider.family<List<EBTimelineEntity>, Map<String, dynamic>>(
        (ref, Map<String, dynamic> params) async {

  final repo = ref.read(ebRepositoryProvider);
  try {
    final timelinesResult = await repo.fetchTimelineByID(params['encounterID']);
    // logger.f('timelinesResult: $timelinesResult');
    final stagesResult = await repo.fetchTimelineStages(
        "CORNEA_DONATION", params['timelineVersion']);
    // logger.f('stagesResult: $stagesResult');
    if (timelinesResult.isRight() && stagesResult.isRight()) {
      final timelines = timelinesResult.getOrElse(() => []);
      final stages =
          stagesResult.getOrElse(() => const EbTimelineConfigModel());
      // log(EBTimelineMapper.mapToEntity(timelines, stages).toString());
      return Future.delayed(
        const Duration(milliseconds: 100),
        () {
          return EBTimelineMapper.mapToEntity(timelines, stages);
        },
      );
    } else {
      throw EBServerFailure(
          errorMessage: "failure in fetching timeline",
          errorObject: EBErrorObject());
    }
  } on EBFailure catch (e) {
    logger.e('EBFailure: $e');
    rethrow;
  } catch (e) {
    logger.e('Error: $e');
    rethrow;
  }
});
const sampleJson = [
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "INTIMATION",
    "stageName": "INTIMATION",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "PRELIMINARY_SCREENING",
    "stageName": "PRELIMINARY SCREENING",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "CORNEA_RECOVERY",
    "stageName": "CORNEA RECOVERY",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "SHIPPED_TO_EYEBANK",
    "stageName": "SHIPPED TO EYEBANK",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "RECEIVED_AT_EYEBANK",
    "stageName": "RECEIVED AT EYEBANK",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "IN_PROGRESS",
    "assessmentName": "SEROLOGY",
    "stageName": "SEROLOGY",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "IN_PROGRESS",
    "assessmentName": "CORNEA_EVALUATION",
    "stageName": "CORNEA EVALUATION",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "UNKNOWN",
    "assessmentName": "IN_INVENTORY",
    "stageName": " IN INVENTORY",
    "subSteps": [],
  },
];
