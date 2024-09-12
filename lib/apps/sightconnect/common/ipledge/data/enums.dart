enum GenderEnum {
  male(
    value: "MALE",
    displayValue: "Male",
  ),
  female(
    value: "FEMALE",
    displayValue: "Female",
  ),
  others(
    value: "OTHERS",
    displayValue: "Others",
  );

  final String value;
  final String displayValue;

  const GenderEnum({
    required this.value,
    required this.displayValue,
  });
}
