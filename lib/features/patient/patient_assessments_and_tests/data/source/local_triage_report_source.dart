class LocalTriageReportSource {
  static var local_triage_result = [
    {
      "encounterId": 33300000001,
      "organizationCode": 88000004,
      "serviceType": "OPTOMETRY",
      "encounterStatus": "IN_PROGRESS",
      "remarks": null,
      "encounterPeriod": {
        "id": 1051,
        "start": "2023-12-07T19:41:33+05:30",
        "end": null
      },
      "diagnosticReportId": 33200000001,
      "assessmentCode": 10000001,
      "assessmentVersion": "1.0",
      "category": null,
      "code": null,
      "issued": "2023-12-07T19:41:33+05:30",
      "userStartDate": "2023-12-07T19:41:33+05:30",
      "source": "PATIENT_APP",
      "status": "CANCELLED",
      "subject": 9627849171,
      "observationSeverity": "HIGH",
      "questionResponseSeverity": null,
      "mediaSeverity": null,
      "cumulativeSeverity": "HIGH",
      "sourceVersion": "1.0",
      "performerId": 9627849171,
      "performerRole": "PATIENT",
      "diagnosticReportDescription":
          "It's advisable to arrange an early visit to an eye specialist for a thorough evaluation and personalized treatment.",
      "questionResultDescription": "You might need to see an eye specialist.",
      "observationResultDescription":
          "On preliminary testing, your vision appears very low and we would suggest you seek an urgent consultation with an eye specialist in your area",
      "mediaResultDescription": null,
      "incompleteTests": [
        {"id": 1101, "testName": "QUESTIONNAIRE"}
      ],
      "responses": [
        {
          "id": 1251,
          "authored": null,
          "linkId": 2001,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 1301, "score": 1.0, "answerCode": null, "value": "YES"}
          ]
        },
        {
          "id": 1252,
          "authored": null,
          "linkId": 2002,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 1302, "score": 1.0, "answerCode": null, "value": "NO"}
          ]
        }
      ],
      "observations": [
        {
          "id": 1201,
          "performer": null,
          "issued": null,
          "identifier": 1301,
          "interpretation": null,
          "value": "0.75",
          "score": 2.0
        },
        {
          "id": 1202,
          "performer": null,
          "issued": null,
          "identifier": 1302,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        },
        {
          "id": 1202,
          "performer": null,
          "issued": null,
          "identifier": 1303,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        }
      ],
      "media": [
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1751,
          "baseUrl": "https://gene.vision/wp-content/uploads/2020/02/",
          "endpoint": "Limbus-close-up-1024x555.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1752,
          "baseUrl": "https://gene.vision/wp-content/uploads/2020/02/",
          "endpoint": "Limbus-close-up-1024x555.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1753,
          "baseUrl": "https://gene.vision/wp-content/uploads/2020/02/",
          "endpoint": "Limbus-close-up-1024x555.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        }
      ],
      "carePlans": [
        {
          "carePlanId": 1401,
          "carePlanStatus": "REVOKED",
          "category": "OPHTHALMOLOGY",
          "title": null,
          "description": null,
          "subject": 9627849171,
          "created": "2023-12-07T19:41:33+05:30",
          "careTeam": null,
          "note": null,
          "period": {
            "id": 1052,
            "start": "2023-12-07T19:41:33+05:30",
            "end": null
          },
          "custodian": null,
          "partOf": null,
          "carePlan": null,
          "conditions": [
            {
              "id": 1601,
              "recordedDate": "2023-12-07T19:41:33+05:30",
              "bodySite": null,
              "code": "EYE_TRIAGE",
              "note": null
            }
          ],
          "activities": [
            {
              "id": 1451,
              "progress": null,
              "plannedActivityReference": {
                "id": 1003,
                "type": "SERVICE_REQUEST",
                "serviceRequest": {
                  "id": 1351,
                  "note": null,
                  "patientInstruction": "VISIT_SECONDARY_CLINIC",
                  "bodySite": null,
                  "priority": "URGENT"
                },
                "communication": {
                  "id": null,
                  "status": null,
                  "statusReason": null,
                  "category": null,
                  "priority": null,
                  "doNotPerform": null,
                  "medium": null,
                  "subject": null,
                  "about": null,
                  "authoredOn": null,
                  "reason": null,
                  "note": null
                }
              }
            }
          ],
          "goals": [
            {
              "id": 1501,
              "statusDate": "2023-12-14T10:01:59.131409+05:30",
              "statusReason": "Cancelled by Care Plan",
              "achievementStatus": "NOT_ATTAINABLE",
              "lifecycleStatus": null,
              "category": "TREATMENT",
              "outcome": null,
              "startDate": "2023-12-07T19:41:33+05:30",
              "dueDate": null,
              "targets": [
                {
                  "id": 1551,
                  "measure": null,
                  "detailString": "Treatment to be provided",
                  "detailQuantity": null,
                  "detailRange": null,
                  "detailCodeableConcept": null,
                  "dueDate": null
                }
              ]
            }
          ]
        }
      ],
      "updateEndTime": "2025-12-07T19:41:33+05:30",
    },
    {
      "encounterId": 33300000001,
      "organizationCode": 88000004,
      "serviceType": "OPTOMETRY",
      "encounterStatus": "IN_PROGRESS",
      "remarks": null,
      "encounterPeriod": {
        "id": 1051,
        "start": "2023-12-07T19:41:33+05:30",
        "end": null
      },
      "diagnosticReportId": 33200000003,
      "assessmentCode": 10000001,
      "assessmentVersion": "1.0",
      "category": null,
      "code": null,
      "issued": "2023-12-14T19:41:33+05:30",
      "userStartDate": "2023-12-14T19:41:33+05:30",
      "source": "PATIENT_APP",
      "status": "FINAL",
      "subject": 9627849171,
      "observationSeverity": "HIGH",
      "questionResponseSeverity": null,
      "mediaSeverity": null,
      "cumulativeSeverity": "HIGH",
      "sourceVersion": "1.0",
      "performerId": 9627849171,
      "performerRole": "PATIENT",
      "incompleteTests": [
        {"id": 2401, "testName": "QUESTIONNAIRE"}
      ],
      "responses": [
        {
          "id": 2551,
          "authored": null,
          "linkId": 2001,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 2601, "score": 1.0, "answerCode": null, "value": "YES"}
          ]
        },
        {
          "id": 2552,
          "authored": null,
          "linkId": 2002,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 2602, "score": 1.0, "answerCode": null, "value": "NO"}
          ]
        }
      ],
      "observations": [
        {
          "id": 2501,
          "performer": null,
          "issued": null,
          "identifier": 1301,
          "interpretation": null,
          "value": "0.75",
          "score": 2.0
        },
        {
          "id": 2502,
          "performer": null,
          "issued": null,
          "identifier": 1302,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        },
        {
          "id": 2502,
          "performer": null,
          "issued": null,
          "identifier": 1303,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        }
      ],
      "media": [
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1751,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1752,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1753,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        }
      ],
      "carePlans": [
        {
          "carePlanId": 2801,
          "carePlanStatus": "ACTIVE",
          "category": "OPHTHALMOLOGY",
          "title": null,
          "description": null,
          "subject": 9627849171,
          "created": "2023-12-14T19:41:33+05:30",
          "careTeam": null,
          "note": null,
          "period": {
            "id": 2751,
            "start": "2023-12-14T19:41:33+05:30",
            "end": null
          },
          "custodian": null,
          "partOf": null,
          "carePlan": null,
          "conditions": [
            {
              "id": 3001,
              "recordedDate": "2023-12-14T19:41:33+05:30",
              "bodySite": null,
              "code": "EYE_TRIAGE",
              "note": null
            }
          ],
          "activities": [
            {
              "id": 2851,
              "progress": null,
              "plannedActivityReference": {
                "id": 2652,
                "type": "SERVICE_REQUEST",
                "serviceRequest": {
                  "id": 2701,
                  "note": null,
                  "patientInstruction": "VISIT_SECONDARY_CLINIC",
                  "bodySite": null,
                  "priority": "URGENT"
                },
                "communication": {
                  "id": null,
                  "status": null,
                  "statusReason": null,
                  "category": null,
                  "priority": null,
                  "doNotPerform": null,
                  "medium": null,
                  "subject": null,
                  "about": null,
                  "authoredOn": null,
                  "reason": null,
                  "note": null
                }
              }
            }
          ],
          "goals": [
            {
              "id": 2901,
              "statusDate": "2023-12-14T10:06:30.652425+05:30",
              "statusReason": "Created by Care plan",
              "achievementStatus": "IN_PROGRESS",
              "lifecycleStatus": null,
              "category": "TREATMENT",
              "outcome": null,
              "startDate": "2023-12-14T19:41:33+05:30",
              "dueDate": null,
              "targets": [
                {
                  "id": 2951,
                  "measure": null,
                  "detailString": "Treatment to be provided",
                  "detailQuantity": null,
                  "detailRange": null,
                  "detailCodeableConcept": null,
                  "dueDate": null
                }
              ]
            }
          ]
        }
      ],
      "updateEndTime": "2023-12-16T19:41:33+05:30",
      "diagnosticReportDescription":
          "You might need to see an eye specialist with specialisation in conditions of the eyelid"
    },
    {
      "encounterId": 33300000001,
      "organizationCode": 88000004,
      "serviceType": "OPTOMETRY",
      "encounterStatus": "IN_PROGRESS",
      "remarks": null,
      "encounterPeriod": {
        "id": 1051,
        "start": "2023-12-07T19:41:33+05:30",
        "end": null
      },
      "diagnosticReportId": 33200000002,
      "assessmentCode": 10000001,
      "assessmentVersion": "1.0",
      "category": null,
      "code": null,
      "issued": "2023-12-07T19:41:33+05:30",
      "userStartDate": "2023-12-07T19:41:33+05:30",
      "source": "PATIENT_APP",
      "status": "CANCELLED",
      "subject": 9627849171,
      "observationSeverity": "HIGH",
      "questionResponseSeverity": null,
      "mediaSeverity": null,
      "cumulativeSeverity": "HIGH",
      "sourceVersion": "1.0",
      "performerId": 9627849171,
      "performerRole": "PATIENT",
      "incompleteTests": [
        {"id": 1701, "testName": "QUESTIONNAIRE"}
      ],
      "responses": [
        {
          "id": 1851,
          "authored": null,
          "linkId": 2001,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 1901, "score": 1.0, "answerCode": null, "value": "YES"}
          ]
        },
        {
          "id": 1852,
          "authored": null,
          "linkId": 2002,
          "score": 1.0,
          "author": null,
          "answers": [
            {"id": 1902, "score": 1.0, "answerCode": null, "value": "NO"}
          ]
        }
      ],
      "observations": [
        {
          "id": 1801,
          "performer": null,
          "issued": null,
          "identifier": 1301,
          "interpretation": null,
          "value": "0.75",
          "score": 2.0
        },
        {
          "id": 1802,
          "performer": null,
          "issued": null,
          "identifier": 1302,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        },
        {
          "id": 1802,
          "performer": null,
          "issued": null,
          "identifier": 1303,
          "interpretation": null,
          "value": "1",
          "score": 2.0
        }
      ],
      "media": [
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1751,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1752,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        },
        {
          "id": 2453,
          "performer": null,
          "issued": null,
          "identifier": 1753,
          "baseUrl": "https://en.wikipedia.org/wiki",
          "endpoint": "/File:Human_eye_with_blood_vessels.jpg",
          "bodySite": null,
          "score": 0.0,
          "fileId": null
        }
      ],
      "carePlans": [
        {
          "carePlanId": 2101,
          "carePlanStatus": "REVOKED",
          "category": "OPHTHALMOLOGY",
          "title": null,
          "description": null,
          "subject": 9627849171,
          "created": "2023-12-07T19:41:33+05:30",
          "careTeam": null,
          "note": null,
          "period": {
            "id": 2051,
            "start": "2023-12-07T19:41:33+05:30",
            "end": null
          },
          "custodian": null,
          "partOf": null,
          "carePlan": null,
          "conditions": [
            {
              "id": 2301,
              "recordedDate": "2023-12-07T19:41:33+05:30",
              "bodySite": null,
              "code": "EYE_TRIAGE",
              "note": null
            }
          ],
          "activities": [
            {
              "id": 2151,
              "progress": null,
              "plannedActivityReference": {
                "id": 1952,
                "type": "SERVICE_REQUEST",
                "serviceRequest": {
                  "id": 2001,
                  "note": null,
                  "patientInstruction": "VISIT_SECONDARY_CLINIC",
                  "bodySite": null,
                  "priority": "URGENT"
                },
                "communication": {
                  "id": null,
                  "status": null,
                  "statusReason": null,
                  "category": null,
                  "priority": null,
                  "doNotPerform": null,
                  "medium": null,
                  "subject": null,
                  "about": null,
                  "authoredOn": null,
                  "reason": null,
                  "note": null
                }
              }
            }
          ],
          "goals": [
            {
              "id": 2201,
              "statusDate": "2023-12-14T10:06:30.49142+05:30",
              "statusReason": "Cancelled by Care Plan",
              "achievementStatus": "NOT_ATTAINABLE",
              "lifecycleStatus": null,
              "category": "TREATMENT",
              "outcome": null,
              "startDate": "2023-12-07T19:41:33+05:30",
              "dueDate": null,
              "targets": [
                {
                  "id": 2251,
                  "measure": null,
                  "detailString": "Treatment to be provided",
                  "detailQuantity": null,
                  "detailRange": null,
                  "detailCodeableConcept": null,
                  "dueDate": null
                }
              ]
            }
          ]
        }
      ],
      "updateEndTime": "1999-04-05T06:21:33+05:30",
      "diagnosticReportDescription":
          "You might need to see an eye specialist with specialisation in conditions of the eyelid"
    }
  ];
}
