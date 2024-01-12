import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider();
});

class TriageMemberProvider extends ChangeNotifier {
  int? testPatientId;
  TriageMemberProvider();

  void setTestPersonId(int patientId) {
    testPatientId = patientId;
    notifyListeners();
    logger.i('TriageMemberProvider: setTestPersonId: $testPatientId');
  }
}
