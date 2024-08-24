// final ebOrganInventoryTimlineProvider =
//     FutureProvider.family((ref, caseID) async {
//   return Future.delayed(const Duration(seconds: 1), () {
//     return sampleJson.map((e) => EBTimeLineCaseModel.fromJson(e)).toList();
//   });
// });

const sampleJson = [
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "COMPLETED",
    "assessmentName": "TISSUE_ACQUISITION",
    "stageName": "TISSUE ACQUISITION",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "IN_PROGRESS",
    "assessmentName": "DOCTOR_ASSESSMENT",
    "stageName": "DOCTOR ASSESSMENT",
    "subSteps": [],
  },
  {
    "initiateDate": "2023-10-01T12:00:00Z",
    "recentUpdatedTime": "2023-10-01T12:00:00Z",
    "status": "UNKNOWN",
    "assessmentName": "ADVERSE_REACTION_REPORT",
    "stageName": "ADVERSE REACTION REPORT",
    "subSteps": [],
  },
];
