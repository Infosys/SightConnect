/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
