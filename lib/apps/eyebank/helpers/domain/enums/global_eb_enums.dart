enum EBStageName {
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
  );

  final String value;
  final String displayValue;

  const EBStageName({
    required this.value,
    required this.displayValue,
  });
}

enum EBStatus {
  // COMPLETED, PENDING, REJECTED, ACTIVE, UNKNOWN

  COMPLETED(
    value: 'COMPLETED',
    displayValue: 'Completed',
  ),
  PENDING(
    value: 'PENDING',
    displayValue: 'Pending',
  ),
  REJECTED(
    value: 'REJECTED',
    displayValue: 'Rejected',
  ),
  ACTIVE(
    value: 'ACTIVE',
    displayValue: 'Active',
  ),
  UNKNOWN(value: 'UNKNOWN', displayValue: 'Yet to be updated');

  final String value;
  final String displayValue;

  const EBStatus({
    required this.value,
    required this.displayValue,
  });
}
