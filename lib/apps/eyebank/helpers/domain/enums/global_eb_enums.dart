enum EBStageName {
  UNDEFINED(
    value: 'UNDEFINED',
    displayValue: 'Undefined',
  ),

/////-------------------CORNEA DONATION-------------------/////

  DEATH_INTIMATION(
    value: 'DEATH_INTIMATION',
    displayValue: 'Death Intimation',
  ),
  DONOR_SCREENING(
    value: 'DONOR_SCREENING',
    displayValue: 'Donor Screening',
  ),
  CORNEA_RECOVERY(
    value: 'CORNEA_RECOVERY',
    displayValue: 'Cornea Recovery',
  ),
  SHIPPED_TO_EYEBANK(
    value: 'SHIPPED_TO_EYEBANK',
    displayValue: 'Shipped to Eyebank',
  ),
  RECEIVED_AT_EYEBANK(
    value: 'RECEIVED_AT_EYEBANK',
    displayValue: 'Received at Eyebank',
  ),
  SEROLOGY(
    value: 'SEROLOGY',
    displayValue: 'Serology',
  ),
  CORNEA_EVALUATION(
    value: 'CORNEA_EVALUATION',
    displayValue: 'Cornea Evaluation',
  ),
  IN_INVENTORY(
    value: 'IN_INVENTORY',
    displayValue: 'In Inventory',
  ),

  /////-------------------CORNEA TRANSPLANT-------------------/////

  CORNEA_REQUEST(
    value: 'CORNEA_REQUEST',
    displayValue: 'Cornea Request',
  ),
  CORNEA_ASSIGNMENT(
    value: 'CORNEA_ASSIGNMENT',
    displayValue: 'Cornea Assignment',
  ),
  CORNEA_CONFIRMATION(
    value: 'CORNEA_CONFIRMATION',
    displayValue: 'Cornea Confirmation',
  ),
  SHIPPED_TO_SURGEON(
    value: 'SHIPPED_TO_SURGEON',
    displayValue: 'Shipped to Surgeon',
  ),
  RECEIVED_BY_SURGEON(
    value: 'RECEIVED_BY_SURGEON',
    displayValue: 'Received by Surge on',
  ),

  CORNEA_TRANSPLANT(
    value: 'CORNEA_TRANSPLANT',
    displayValue: 'Cornea Transplant',
  ),
  ADVERSE_REACTION(
    value: 'ADVERSE_REACTION',
    displayValue: 'Adverse Reaction',
  );

  final String value;
  final String displayValue;

  const EBStageName({
    required this.value,
    required this.displayValue,
  });

  static EBStageName fromValue(String value) {
    return EBStageName.values.firstWhere(
      (stage) => stage.value == value,
      orElse: () => EBStageName.UNDEFINED,
    );
  }

  // remove undefined from the list
  static List<EBStageName> get options =>
      List<EBStageName>.from(EBStageName.values)..remove(EBStageName.UNDEFINED);
}

enum EBStatus {
// INITIATED, PENDING, UNDER_PROCESS, SUBMITTED, VERIFIED, ACCEPTED, REJECTED

  INITIATED(value: 'INITIATED', displayValue: 'Initiated'),
  PENDING(value: 'PENDING', displayValue: 'Pending'),
  UNDER_PROCESS(value: 'UNDER_PROCESS', displayValue: 'Under Process'),
  SUBMITTED(value: 'SUBMITTED', displayValue: 'Submitted'),
  VERIFIED(value: 'VERIFIED', displayValue: 'Verified'),
  ACCEPTED(value: 'ACCEPTED', displayValue: 'Accepted'),
  REJECTED(value: 'REJECTED', displayValue: 'Rejected'),
  UNKNOWN(value: 'UNKNOWN', displayValue: 'In Queue');

  final String value;
  final String displayValue;

  const EBStatus({
    required this.value,
    required this.displayValue,
  });
}
