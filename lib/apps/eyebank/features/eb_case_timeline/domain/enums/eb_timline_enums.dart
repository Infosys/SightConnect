enum EBCaseStatus {
  PENDING,
  COMPLETED,
  IN_PROGRESS,
  CANCELLED,
  UNKNOWN,
}

enum EBAssessmentName {
  INTIMATION,
  PRELIMINARY_SCREENING,
  CORNEA_RECOVERY,
  SHIPPED_TO_EYEBANK,
  RECEIVED_TO_EYEBANK,
  SEROLOGY,
  CORNEA_EVALUATION,
  IN_INVENTORY,
  UNKNOWN,

  // ONLY FOR TESTING
  ISSUE_ACQUISITION,
  ADVERSE_REACTION_REPORT,
  DOCTOR_ASSESSMENT,
}

enum EBRejectCaseReasonEnum {
  UNSUITABLE(
    value: 'UNSUITABLE',
    displayValue: 'Unsuitable',
  ),
  NOT_PROCEEDED(
    value: 'NOT_PROCEEDED',
    displayValue: 'Not Proceeded',
  ),
  NOT_SCREENED(
    value: 'NOT_SCREENED',
    displayValue: 'Not Screened',
  ),
  OTHER(
    value: 'OTHER',
    displayValue: 'Other',
  );

  final String value;
  final String displayValue;

  const EBRejectCaseReasonEnum({
    required this.value,
    required this.displayValue,
  });
}
