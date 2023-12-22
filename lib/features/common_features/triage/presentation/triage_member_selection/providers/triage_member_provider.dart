import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider();
});

class TriageMemberProvider extends ChangeNotifier {
  int? testPatientId;
  TriageMemberProvider();

  setTestPersonId(int patientId) {
    testPatientId = patientId;
    notifyListeners();
  }
}
