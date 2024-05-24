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
    return RegExp(r'^[a-zA-Z0-9]*$').hasMatch(value);
  }

  static String get mobileRegExp => r"^(?:[+0]9)?[0-9]{10}$";
}
