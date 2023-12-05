import 'package:eye_care_for_all/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  SharedPreferenceService._();
 
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
 
  static set storeTumblingOverInfo(bool value) {
    _sharedPreferences.setBool("tumblingOverInfo", value);
  }
 
  static bool get getTumblingOverInfo =>
      _sharedPreferences.getBool("tumblingOverInfo") ?? false;
}
