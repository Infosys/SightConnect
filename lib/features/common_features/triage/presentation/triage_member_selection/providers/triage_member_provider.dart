import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider();
});

class TriageMemberProvider extends ChangeNotifier {
  late dynamic testPatient;

  setTestPerson(dynamic people, int index) {
    testPatient = people;

    notifyListeners();
  }
}
