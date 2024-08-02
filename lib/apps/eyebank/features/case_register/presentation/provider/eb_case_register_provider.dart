import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseCreationProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle.loadString(
      'assets/local_json/survey_js_final.json',
    );
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});
