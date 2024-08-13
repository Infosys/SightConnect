import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseTimeLineProvider = FutureProvider.family((ref, caseID) async {
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
    "assessmentName": "TEMPLATE",
    "stageName": "INTIMATION"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "TEMPLATE",
    "stageName": "PRELIMINARY_ASSESSMENT"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "TEMPLATE",
    "stageName": "CORNEA_RECOVERY",
    "subSteps": [
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "TEMPLATE",
        "stageName": "HEMODILUTION"
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "COMPLETED",
        "assessmentName": "TEMPLATE",
        "stageName": "CORNEA_RECOVERY",
        "subSteps": [
          {
            "initiateDate": "2023-10-01T12:00:00Z",
            "recentUpdatedTime": "2023-10-01T12:00:00Z",
            "status": "PENDING",
            "assessmentName": "TEMPLATE",
            "stageName": "HEMODILUTION"
          },
          {
            "initiateDate": "2023-10-01T12:00:00Z",
            "recentUpdatedTime": "2023-10-01T12:00:00Z",
            "status": "PENDING",
            "assessmentName": "TEMPLATE",
            "stageName": "BLOOD_SAMPLE"
          }
        ]
      },
    ]
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "IN_PROGRESS",
    "assessmentName": "TEMPLATE",
    "stageName": "SHIPPED_TO_EYEBANK"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "TEMPLATE",
    "stageName": "RECEIVED_AT_EYEBANK"
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "TEMPLATE",
    "stageName": "EVALUATION",
    "subSteps": [
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "TEMPLATE",
        "stageName": "SEROLOGY"
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "TEMPLATE",
        "stageName": "EVALUATION_OD"
      },
      {
        "initiateDate": "2023-10-01T12:00:00Z",
        "recentUpdatedTime": "2023-10-01T12:00:00Z",
        "status": "PENDING",
        "assessmentName": "TEMPLATE",
        "stageName": "EVALUATION_OS"
      }
    ]
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "PENDING",
    "assessmentName": "TEMPLATE",
    "stageName": "INVENTORY"
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