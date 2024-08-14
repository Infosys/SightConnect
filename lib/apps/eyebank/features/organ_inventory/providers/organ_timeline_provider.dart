import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final organInventoryTimlineProvider =
    FutureProvider.family((ref, caseID) async {
  return Future.delayed(const Duration(seconds: 1), () {
    return local_timeline_json
        .map((e) => EBTimeLineCaseModel.fromJson(e))
        .toList();
  });
});

var local_timeline_json = [
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "INTIMATION",
    "stageName": "INTIMATION"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "PRELIMINARY_ASSESSMENT",
    "stageName": "PRELIMINARY ASSESSMENT"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "CORNEA_RECOVERY",
    "stageName": "CORNEA RECOVERY",
    "subSteps": [
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "HEMODILUTION",
        "stageName": "HEMODILUTION",
        "subSteps": [],
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "BLOOD_SAMPLE",
        "stageName": "BLOOD SAMPLE",
        "subSteps": [],
      }
    ]
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "IN_PROGRESS",
    "assessmentName": "SHIPPED_TO_EYEBANK",
    "stageName": "SHIPPED TO EYEBANK",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "RECEIVED_AT_EYEBANK",
    "stageName": "RECEIVED AT EYEBANK",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "EVALUATION",
    "stageName": "EVALUATION",
    "subSteps": [
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "SEROLOGY",
        "stageName": "SEROLOGY",
        "subSteps": [],
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "EVALUATION_OD",
        "stageName": "EVALUATION OD",
        "subSteps": [],
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "EVALUATION_OS",
        "stageName": "EVALUATION OS",
        "subSteps": [],
      }
    ]
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "INVENTORY",
    "stageName": "INVENTORY",
    "subSteps": [],
  }
];


//INITIMATION
// PRELIMINARY_ASSESSMENT
//CORNEA_RECOVERY 
   // HEMODILUTION
   // BLOOD_SAMPLE
// SHIPPED TO EYEBANK
//RECIVED AT EYEBANK   
// EVALUATION
    // SEROLOGY
    //EVALUATION OD 
    // EVALUATION OS
// INVENTORY