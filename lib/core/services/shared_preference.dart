import 'package:eye_care_for_all/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    try {
      _sharedPreferences = await SharedPreferences.getInstance();
    } catch (e) {
      logger.d({
        "error": "SharedPrefService.init",
      });
    }
  }

  static Future<void> setLanguage(String value) async {
    await _sharedPreferences.setString("language", value);
  }

  static Future<void> setDontShowVisualAcuityStatus(bool value) async {
    await _sharedPreferences.setBool("dontShowVisualAcuityStatus", value);
  }

  static Future<void> setFontScale(double value) async {
    await _sharedPreferences.setDouble("fontScale", value);
  }

  static set storeTumblingOverInfo(bool value) {
    _sharedPreferences.setBool("tumblingOverInfo", value);
  }

  static String? get getLanguage => _sharedPreferences.getString("language");

  static double get getFontScale =>
      _sharedPreferences.getDouble("fontScale") ?? 1.0;

  static bool get getDontShowVisualAcuityStatus =>
      _sharedPreferences.getBool("dontShowVisualAcuityStatus") ?? false;

  static bool get getTumblingOverInfo =>
      _sharedPreferences.getBool("tumblingOverInfo") ?? false;

  static Future<void> clear() async {
    await _sharedPreferences.remove("language");
    await _sharedPreferences.remove("fontScale");
    await _sharedPreferences.remove("dontShowVisualAcuityStatus");
    await _sharedPreferences.remove("tumblingOverInfo");
  }
}
