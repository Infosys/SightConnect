/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

class Regex {
  static bool isMobile(String mobile) {
    return RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(mobile);
  }

  static bool isValidTitle(String value) {
    return RegExp(r'^[a-zA-Z0-9 _\-&]*$').hasMatch(value);
  }

  static bool isValidDescription(String value) {
    return RegExp(r'^[a-zA-Z0-9 _\-&,.;:!?]*$').hasMatch(value);
  }

  static bool isValidPincode(String value) {
    return RegExp(r'^[1-9][0-9]{5}$').hasMatch(value);
  }

  static bool isValidCityTownVillageName(String value) {
    return RegExp(r'^[a-zA-Z0-9 ]*$').hasMatch(value);
  }

  /// --------

  static String get mobileRegExp => r"^(?:[+0]9)?[0-9]{10}$";
  static String get titleRegExp => r'^[a-zA-Z0-9 _\-&]*$';
  // Mandatory: Matches a date in the format DD-MM-YYYY
  static String get dob =>
      r'^(0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[0-2])-(19|20)\d\d$';
}
