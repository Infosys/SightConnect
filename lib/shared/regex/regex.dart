class Regex {
  static isMobile(String mobile) {
    return RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(mobile);
  }

  static String get mobileRegExp => r"^(?:[+0]9)?[0-9]{10}$";
}
