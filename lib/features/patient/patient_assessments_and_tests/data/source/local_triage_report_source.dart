class LocalTriageReportSource {
  static var local_triage_result = [];

  // [
  //   {
  //     "encounterId": 33300000005,
  //     "organizationCode": 1001,
  //     "serviceType": "OPTOMETRY",
  //     "encounterStatus": "IN_PROGRESS",
  //     "remarks": null,
  //     "encounterPeriod": {
  //       "id": 2503,
  //       "start": "2023-12-13T14:11:33Z",
  //       "end": null
  //     },
  //     "diagnosticReportId": 33200000005,
  //     "assessmentCode": 10000001,
  //     "assessmentVersion": "1.0",
  //     "category": null,
  //     "code": null,
  //     "issued": "2023-12-18T14:11:33Z",
  //     "userStartDate": "2023-12-13T14:11:33Z",
  //     "source": "PATIENT_APP",
  //     "status": "FINAL",
  //     "subject": 9627849173,
  //     "observationSeverity": "ABNORMAL",
  //     "questionResponseSeverity": null,
  //     "mediaSeverity": null,
  //     "cumulativeSeverity": "ABNORMAL",
  //     "sourceVersion": "1.0",
  //     "performerId": 9627849173,
  //     "performerRole": "PATIENT",
  //     "incompleteTests": [
  //       {"id": 2552, "testName": "QUESTIONNAIRE"}
  //     ],
  //     "responses": [
  //       {
  //         "id": 2703,
  //         "authored": null,
  //         "linkId": 2001,
  //         "score": 1,
  //         "author": null,
  //         "answers": [
  //           {"id": 2753, "score": 1, "answerCode": null, "value": "Yes"}
  //         ]
  //       },
  //       {
  //         "id": 2704,
  //         "authored": null,
  //         "linkId": 2002,
  //         "score": 1,
  //         "author": null,
  //         "answers": [
  //           {"id": 2754, "score": 1, "answerCode": null, "value": "No"}
  //         ]
  //       }
  //     ],
  //     "observations": [
  //       {
  //         "id": 2654,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1301,
  //         "interpretation": null,
  //         "value": "0.75",
  //         "score": 2
  //       },
  //       {
  //         "id": 2655,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1302,
  //         "interpretation": null,
  //         "value": "1.0",
  //         "score": 2
  //       },
  //       {
  //         "id": 2656,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1303,
  //         "interpretation": null,
  //         "value": "1.0",
  //         "score": 2
  //       }
  //     ],
  //     "media": [
  //       {
  //         "id": 2604,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1751,
  //         "baseUrl": "https://gene.vision/wp-content",
  //         "endpoint": "/uploads/2020/02/Limbus-close-up-1024x555.jpg",
  //         "bodySite": null,
  //         "score": 0,
  //         "fileId": "1702728827406-5867878d-f8ea-4c51-ad50-fbe96148bf8c"
  //       },
  //       {
  //         "id": 2605,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1752,
  //         "baseUrl": "https://gene.vision/wp-content",
  //         "endpoint": "/uploads/2020/02/Limbus-close-up-1024x555.jpg",
  //         "bodySite": null,
  //         "score": 0,
  //         "fileId": "1702728827406-5867878d-f8ea-4c51-ad50-fbe96148bf8c"
  //       },
  //       {
  //         "id": 2606,
  //         "performer": null,
  //         "issued": null,
  //         "identifier": 1753,
  //         "baseUrl": "https://gene.vision/wp-content",
  //         "endpoint": "/uploads/2020/02/Limbus-close-up-1024x555.jpg",
  //         "bodySite": null,
  //         "score": 0,
  //         "fileId": "1702728827406-5867878d-f8ea-4c51-ad50-fbe96148bf8c"
  //       }
  //     ],
  //     "carePlans": [
  //       {
  //         "carePlanId": 2852,
  //         "carePlanStatus": "ACTIVE",
  //         "category": "OPHTHALMOLOGY",
  //         "title": null,
  //         "description": null,
  //         "subject": 9627849173,
  //         "created": "2023-12-13T14:11:33Z",
  //         "careTeam": null,
  //         "note": null,
  //         "period": {"id": 2504, "start": "2023-12-13T14:11:33Z", "end": null},
  //         "custodian": null,
  //         "partOf": null,
  //         "carePlan": null,
  //         "conditions": [
  //           {
  //             "id": 3052,
  //             "recordedDate": "2023-12-13T14:11:33Z",
  //             "bodySite": null,
  //             "code": "EYE_TRIAGE",
  //             "note": null
  //           }
  //         ],
  //         "activities": [
  //           {
  //             "id": 2902,
  //             "progress": null,
  //             "plannedActivityReference": {
  //               "id": 2456,
  //               "type": "SERVICE_REQUEST",
  //               "serviceRequest": {
  //                 "id": 2802,
  //                 "note": null,
  //                 "patientInstruction": "VISIT_TERTIARY_CLINIC",
  //                 "identifier": null,
  //                 "bodySite": null,
  //                 "priority": "ASAP"
  //               },
  //               "communication": {
  //                 "id": null,
  //                 "status": null,
  //                 "statusReason": null,
  //                 "category": null,
  //                 "priority": null,
  //                 "doNotPerform": null,
  //                 "medium": null,
  //                 "subject": null,
  //                 "about": null,
  //                 "authoredOn": null,
  //                 "reason": null,
  //                 "note": null
  //               }
  //             }
  //           }
  //         ],
  //         "goals": [
  //           {
  //             "id": 2952,
  //             "statusDate": "2023-12-19T06:37:19.966313Z",
  //             "statusReason": "Created by Care plan",
  //             "achievementStatus": "IN_PROGRESS",
  //             "lifecycleStatus": null,
  //             "category": "TREATMENT",
  //             "outcomes": [],
  //             "startDate": "2023-12-13T14:11:33Z",
  //             "dueDate": null,
  //             "targets": [
  //               {
  //                 "id": 3002,
  //                 "measure": null,
  //                 "detailString": "Treatment to be provided",
  //                 "detailQuantity": null,
  //                 "detailRange": null,
  //                 "detailCodeableConcept": null,
  //                 "dueDate": null
  //               }
  //             ]
  //           }
  //         ]
  //       }
  //     ],
  //     "updateEndTime": "2023-12-15T14:11:33Z",
  //     "diagnosticReportDescription":
  //         "Seeking immediate attention from an eye specialist is crucial to address your condition effectively. Please schedule a consultation without delay",
  //     "questionResultDescription": "You might need to see an eye specialist.",
  //     "observationResultDescription":
  //         "On preliminary testing, your vision appears very low and we would suggest you seek an urgent consultation with an eye specialist in your area",
  //     "mediaResultDescription": null
  //   }
  // ];
}
