import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseTimeLineProvider = FutureProvider.family((ref, caseID) async {
  return Future.delayed(const Duration(seconds: 1), () {
    return sampleJson.map((e) => EBTimeLineCaseModel.fromJson(e)).toList();
  });
});

var sampleJson = [
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
    "assessmentName": "PRELIMINARY_ASSESSMENT",
    "stageName": "PRELIMINARY ASSESSMENT",
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
    "assessmentName": "EVALUATION",
    "stageName": "TISSUE EVALUATION",
    "subSteps": [
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "IN_PROGRESS",
        "assessmentName": "EVALUATION_OD",
        "stageName": "EVALUATION OD",
        "subSteps": [],
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "IN_PROGRESS",
        "assessmentName": "EVALUATION_OS",
        "stageName": "EVALUATION OS",
        "subSteps": [],
      },
    ],
  },
  // {
  //   "initiateDate": "2023-10-01T12:00:00Z",
  //   "recentUpdatedTime": "2023-10-01T12:00:00Z",
  //   "status": "IN_PROGRESS",
  //   "assessmentName": "EVALUATION_OD",
  //   "stageName": "TISSUE EVALUATION OD",
  //   "subSteps": [],
  // },
  // {
  //   "initiateDate": "2023-10-01T12:00:00Z",
  //   "recentUpdatedTime": "2023-10-01T12:00:00Z",
  //   "status": "IN_PROGRESS",
  //   "assessmentName": "EVALUATION_OS",
  //   "stageName": "TISSUE EVALUATION OS",
  //   "subSteps": [],
  // },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "UNKNOWN",
    "assessmentName": "INVENTORY",
    "stageName": "INVENTORY",
    "subSteps": [],
  },
];
