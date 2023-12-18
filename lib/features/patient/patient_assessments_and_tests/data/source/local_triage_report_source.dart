class LocalTriageReportSource {
  static var local_triage_result =[
    {
        "encounterId": 33300000001,
        "organizationCode": 88000004,
        "serviceType": "OPTOMETRY",
        "encounterStatus": "IN_PROGRESS",
        "remarks": null,
        "encounterPeriod": {
            "id": 1051,
            "start": "2023-12-14T19:41:33+05:30",
            "end": null
        },
        "diagnosticReportId": 33200000001,
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
            {
                "id": 1101,
                "testName": "QUESTIONNAIRE"
            }
        ],
        "responses": [
            {
                "id": 1251,
                "authored": null,
                "linkId": 2001,
                "score": 1.0,
                "author": null,
                "answers": [
                    {
                        "id": 1301,
                        "score": 1.0,
                        "answerCode": null,
                        "value": "YES"
                    }
                ]
            },
            {
                "id": 1252,
                "authored": null,
                "linkId": 2002,
                "score": 1.0,
                "author": null,
                "answers": [
                    {
                        "id": 1302,
                        "score": 1.0,
                        "answerCode": null,
                        "value": "NO"
                    }
                ]
            }
        ],
        "observations": [
            {
                "id": 1201,
                "performer": null,
                "issued": null,
                "identifier": 1002,
                "interpretation": null,
                "value": "0.75",
                "score": 2.0
            },
            {
                "id": 1202,
                "performer": null,
                "issued": null,
                "identifier": 1002,
                "interpretation": null,
                "value": "1",
                "score": 2.0
            }
        ],
        "media": [
            {
                "id": 1151,
                "performer": null,
                "issued": null,
                "identifier": 1,
                "baseUrl": "http//www.abc.com",
                "endpoint": "/c/newimage.jpg",
                "bodySite": null,
                "score": 0.0,
                "fileId": null
            }
        ],
        "carePlans": [
            {
                "carePlanId": 1401,
                "carePlanStatus": "ACTIVE",
                "category": "OPHTHALMOLOGY",
                "title": null,
                "description": null,
                "subject": 9627849171,
                "created": "2023-12-14T19:41:33+05:30",
                "careTeam": null,
                "note": null,
                "period": {
                    "id": 1052,
                    "start": "2023-12-14T19:41:33+05:30",
                    "end": null
                },
                "custodian": null,
                "partOf": null,
                "carePlan": null,
                "conditions": [
                    {
                        "id": 1601,
                        "recordedDate": "2023-12-14T19:41:33+05:30",
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
                                "identifier": null,
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
                        "statusDate": "2023-12-18T09:43:41.05846+05:30",
                        "statusReason": "Created by Care plan",
                        "achievementStatus": "IN_PROGRESS",
                        "lifecycleStatus": null,
                        "category": "TREATMENT",
                        "outcomes": [],
                        "startDate": "2023-12-14T19:41:33+05:30",
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
        "updateEndTime": "2025-12-16T19:41:33+05:30",
        "diagnosticReportDescription": "It's advisable to arrange an early visit to an eye specialist for a thorough evaluation and personalized treatment.",
        "questionResultDescription": "You might need to see an eye specialist.",
        "observationResultDescription": "On preliminary testing, your vision appears very low and we would suggest you seek an urgent consultation with an eye specialist in your area",
        "mediaResultDescription": null
    }
];
   
}
