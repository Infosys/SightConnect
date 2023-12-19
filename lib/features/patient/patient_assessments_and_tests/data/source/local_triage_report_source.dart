class LocalTriageReportSource {
  static var local_triage_result =[ {
  "encounterId" : 33300000001,
  "organizationCode" : 88000004,
  "serviceType" : "OPTOMETRY",
  "encounterStatus" : "IN_PROGRESS",
  "remarks" : null,
  "encounterPeriod" : {
    "id" : 1051,
    "start" : "2024-12-19T19:41:33+05:30",
    "end" : null
  },
  "diagnosticReportId" : 33200000001,
  "assessmentCode" : 10000001,
  "assessmentVersion" : "1.0",
  "category" : null,
  "code" : null,
  "issued" : "2023-10-12T19:41:33+05:30",
  "userStartDate" : "2024-12-19T19:41:33+05:30",
  "source" : "PATIENT_APP",
  "status" : "FINAL",
  "subject" : 9627849171,
  "observationSeverity" : "ABNORMAL",
  "questionResponseSeverity" : "LOW",
  "mediaSeverity" : null,
  "cumulativeSeverity" : "ABNORMAL",
  "sourceVersion" : "1.0.0",
  "performerId" : 9627849171,
  "performerRole" : "PATIENT",
  "incompleteTests" : [ ],
  "responses" : [ {
    "id" : 2102,
    "authored" : null,
    "linkId" : 2002,
    "score" : 1.0,
    "author" : null,
    "answers" : [ {
      "id" : 2152,
      "score" : 0.0,
      "answerCode" : null,
      "value" : "YES"
    } ]
  } ],
  "observations" : [ {
    "id" : 1201,
    "performer" : null,
    "issued" : null,
    "identifier" : 1002,
    "interpretation" : null,
    "value" : "0.75",
    "score" : 2.0
  }, {
    "id" : 1202,
    "performer" : null,
    "issued" : null,
    "identifier" : 1003,
    "interpretation" : null,
    "value" : "1",
    "score" : 2.0
  }, {
    "id" : 1203,
    "performer" : null,
    "issued" : null,
    "identifier" : 1004,
    "interpretation" : null,
    "value" : "1",
    "score" : 2.0
  }, {
    "id" : 1751,
    "performer" : null,
    "issued" : null,
    "identifier" : 1003,
    "interpretation" : null,
    "value" : "5.0",
    "score" : 17.0
  }, {
    "id" : 1951,
    "performer" : null,
    "issued" : null,
    "identifier" : 1003,
    "interpretation" : null,
    "value" : "5.0",
    "score" : 17.0
  }, {
    "id" : 1952,
    "performer" : null,
    "issued" : null,
    "identifier" : 1003,
    "interpretation" : null,
    "value" : "5.0",
    "score" : 17.0
  }, {
    "id" : 1953,
    "performer" : null,
    "issued" : null,
    "identifier" : 1003,
    "interpretation" : null,
    "value" : "5.0",
    "score" : 17.0
  } ],
  "media" : [ {
    "id" : 1151,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 0.0,
    "fileId" : null
  }, {
    "id" : 1152,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 0.0,
    "fileId" : null
  }, {
    "id" : 1153,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 0.0,
    "fileId" : null
  }, {
    "id" : 1701,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 13.0,
    "fileId" : "123"
  }, {
    "id" : 1901,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 13.0,
    "fileId" : "123"
  }, {
    "id" : 1902,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 13.0,
    "fileId" : "123"
  }, {
    "id" : 1903,
    "performer" : null,
    "issued" : null,
    "identifier" : 1,
    "baseUrl" : "http//www.abc.com",
    "endpoint" : "/c/newimage.jpg",
    "bodySite" : null,
    "score" : 13.0,
    "fileId" : "123"
  } ],
  "carePlans" : [ {
    "carePlanId" : 1401,
    "carePlanStatus" : "ACTIVE",
    "category" : "OPHTHALMOLOGY",
    "title" : null,
    "description" : null,
    "subject" : 9627849171,
    "created" : "2024-12-19T19:41:33+05:30",
    "careTeam" : null,
    "note" : null,
    "period" : {
      "id" : 1052,
      "start" : "2024-12-19T19:41:33+05:30",
      "end" : null
    },
    "custodian" : null,
    "partOf" : null,
    "carePlan" : null,
    "conditions" : [ {
      "id" : 1601,
      "recordedDate" : "2024-12-19T19:41:33+05:30",
      "bodySite" : null,
      "code" : "EYE_TRIAGE",
      "note" : null
    } ],
    "activities" : [ {
      "id" : 1451,
      "progress" : null,
      "plannedActivityReference" : {
        "id" : 1003,
        "type" : "SERVICE_REQUEST",
        "serviceRequest" : {
          "id" : 1351,
          "note" : null,
          "patientInstruction" : "VISIT_TERTIARY_CLINIC",
          "identifier" : null,
          "bodySite" : null,
          "priority" : "ASAP"
        },
        "communication" : {
          "id" : null,
          "status" : null,
          "statusReason" : null,
          "category" : null,
          "priority" : null,
          "doNotPerform" : null,
          "medium" : null,
          "subject" : null,
          "about" : null,
          "authoredOn" : null,
          "reason" : null,
          "note" : null
        }
      }
    } ],
    "goals" : [ {
      "id" : 1501,
      "statusDate" : "2023-12-18T13:58:52.294706+05:30",
      "statusReason" : "Created by Care plan",
      "achievementStatus" : "IN_PROGRESS",
      "lifecycleStatus" : null,
      "category" : "TREATMENT",
      "outcomes" : [ ],
      "startDate" : "2024-12-19T19:41:33+05:30",
      "dueDate" : null,
      "targets" : [ {
        "id" : 1551,
        "measure" : null,
        "detailString" : "Treatment to be provided",
        "detailQuantity" : null,
        "detailRange" : null,
        "detailCodeableConcept" : null,
        "dueDate" : null
      } ]
    } ]
  } ],
  "updateEndTime" : "2024-12-21T19:41:33+05:30",
  "diagnosticReportDescription" : "Seeking immediate attention from an eye specialist is crucial to address your condition effectively. Please schedule a consultation without delay",
  "questionResultDescription" : "You might need to see an eye specialist.",
  "observationResultDescription" : "On preliminary testing, your vision appears very low and we would suggest you seek an urgent consultation with an eye specialist in your area",
  "mediaResultDescription" : null
} ];
   
}
