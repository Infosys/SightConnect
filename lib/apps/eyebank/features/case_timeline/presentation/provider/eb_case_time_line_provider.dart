import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseTimeLineProvider = FutureProvider.family((ref, caseID) async {
  return Future.delayed(const Duration(seconds: 1), () {
    return [
      {
        "serviceRequestCode": "INTIMATION",
        "description": "Initial notification of the case",
        "timestamp": "2023-10-01T10:00:00Z",
        "status": "COMPLETED"
      },
      {
        "serviceRequestCode": "PRELIMINARY ASSESSMENT",
        "description": "Initial assessment of the case",
        "timestamp": "2023-10-01T11:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "CORNEA RETRIEVAL",
        "description": "Retrieval of the cornea",
        "timestamp": "2023-10-01T12:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "BLOOD SAMPLE",
        "description": "Collection of blood sample",
        "timestamp": "2023-10-01T13:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "HEMODILUTION",
        "description": "Hemodilution process",
        "timestamp": "2023-10-01T14:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "EYE BANK TRANSPORTAION",
        "description": "Transportation to the eye bank",
        "timestamp": "2023-10-01T15:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "EVALUATION",
        "description": "Evaluation of the cornea",
        "timestamp": "2023-10-01T16:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "SEROLOGY",
        "description": "Serology testing",
        "timestamp": "2023-10-01T17:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "RECIPIENT TRANSPORTATION",
        "description": "Transportation to the recipient",
        "timestamp": "2023-10-01T18:00:00Z",
        "status": "PENDING"
      },
      {
        "serviceRequestCode": "RE EVALUATION",
        "description": "Re-evaluation of the case",
        "timestamp": "2023-10-01T19:00:00Z",
        "status": "PENDING"
      }
    ];
  });
});
