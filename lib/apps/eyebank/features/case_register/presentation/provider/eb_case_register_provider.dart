import 'package:eye_care_for_all/apps/eyebank/features/case_register/data/faker/fake.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/data/models/table_data.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseCreationProvider = FutureProvider<String>((ref) async {
  try {
    return await rootBundle.loadString(
      'assets/local_json/case_register.json',
    );
  } catch (e) {
    logger.f('Error Converting json: $e');
    rethrow;
  }
});

final ebCaseTableProvider = FutureProvider<List<TableData>>((ref) async {
  await Future.delayed(const Duration(milliseconds: 200));
  return TableFaker().fetchMockData();
});
