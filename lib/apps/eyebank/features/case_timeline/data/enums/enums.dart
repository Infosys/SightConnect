enum CaseTimeLineSteps {
  INTIMATION,
  PRELIMINARY_ASSESSMENT,
  CORNEA_RECOVERY,
  SHIPPED_TO_EYEBANK,
  RECEIVED_AT_EYEBANK,
  SEROLOGY,
  EVALUATION_OD,
  EVALUATION_OS,
  INVENTORY
}

extension CaseTimeLineStepsExtension on CaseTimeLineSteps {
  String get name {
    switch (this) {
      case CaseTimeLineSteps.INTIMATION:
        return 'Intimation';
      case CaseTimeLineSteps.PRELIMINARY_ASSESSMENT:
        return 'Preliminary Assessment';
      case CaseTimeLineSteps.CORNEA_RECOVERY:
        return 'Cornea Recovery';
      case CaseTimeLineSteps.SHIPPED_TO_EYEBANK:
        return 'Shipped to Eyebank';
      case CaseTimeLineSteps.RECEIVED_AT_EYEBANK:
        return 'Received at Eyebank';
      case CaseTimeLineSteps.SEROLOGY:
        return 'Serology';
      case CaseTimeLineSteps.EVALUATION_OD:
        return 'Evaluation OD';
      case CaseTimeLineSteps.EVALUATION_OS:
        return 'Evaluation OS';
      case CaseTimeLineSteps.INVENTORY:
        return 'Inventory';
      default:
        return '';
    }
  }
}

enum EBCaseStatus {
  PENDING(
    value: "P",
    displayValue: "Pending",
  ),
  COMPLETED(
    value: "C",
    displayValue: "Completed",
  ),
  IN_PROGRESS(
    value: "IP",
    displayValue: "In Progress",
  ),
  CANCELLED(
    value: "X",
    displayValue: "Cancelled",
  );

  final String value;
  final String displayValue;

  const EBCaseStatus({
    required this.value,
    required this.displayValue,
  });
}

enum EBAssessmentName {
  TEMPLATE(
    value: "T",
    displayValue: "Template",
  );

  final String value;
  final String displayValue;

  const EBAssessmentName({
    required this.value,
    required this.displayValue,
  });
}
