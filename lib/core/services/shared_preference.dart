import 'dart:developer';

import 'package:eye_care_for_all/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    try {
      _sharedPreferences = await SharedPreferences.getInstance();
    } catch (e) {
      logger.e({
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

  static set storeTenantId(int value) {
    _sharedPreferences.setInt("tenantId", value);
  }

  static set storeOrganizationId(int value) {
    _sharedPreferences.setInt("organizationId", value);
  }

  static set storeTenantIdVt(int value) {
    _sharedPreferences.setInt("tenantIdVt", value);
  }

  static set storeOrganizationIdVt(int value) {
    _sharedPreferences.setInt("organizationIdVt", value);
  }

  /////////////////////////////////////////////////////////////////////////////////////

  static int? get getTenantIdVt {
    log("getTenantIdVt: ${_sharedPreferences.getInt("tenantIdVt")}");
    return _sharedPreferences.getInt("tenantIdVt");
  }

  static int? get getOrganizationIdVt {
    log("getOrganizationIdVt: ${_sharedPreferences.getInt("organizationIdVt")}");
    return _sharedPreferences.getInt("organizationIdVt");
  }

  static int? get getTenantId {
    log("getTenantId: ${_sharedPreferences.getInt("tenantId")}");
    return _sharedPreferences.getInt("tenantId");
  }

  static int? get getOrganizationId {
    log("getOrganizationId: ${_sharedPreferences.getInt("organizationId")}");
    return _sharedPreferences.getInt("organizationId");
  }

  static String? get getLanguage => _sharedPreferences.getString("language");

  static double get getFontScale =>
      _sharedPreferences.getDouble("fontScale") ?? 1.0;

  static bool get getDontShowVisualAcuityStatus =>
      _sharedPreferences.getBool("dontShowVisualAcuityStatus") ?? false;

  static bool get getTumblingOverInfo =>
      _sharedPreferences.getBool("tumblingOverInfo") ?? false;

  static Future<void> clearAll([bool persistId = false]) async {
    // await _sharedPreferences.remove("language");
    if (persistId) {
      await _sharedPreferences.remove("fontScale");
      await _sharedPreferences.remove("dontShowVisualAcuityStatus");
      await _sharedPreferences.remove("tumblingOverInfo");
    } else {
      await _sharedPreferences.remove("tenantId");
      await _sharedPreferences.remove("organizationId");
      await _sharedPreferences.remove("fontScale");
      await _sharedPreferences.remove("dontShowVisualAcuityStatus");
      await _sharedPreferences.remove("tumblingOverInfo");
    }
  }
}
