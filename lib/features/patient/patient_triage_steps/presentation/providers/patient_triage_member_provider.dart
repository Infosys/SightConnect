import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var traiageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider();
});

class TriageMemberProvider extends ChangeNotifier {
  late Map<String, dynamic> people;

  setPeople(Map<String, dynamic> people) {
    this.people = people;
    notifyListeners();
    print('$people\n');
  }
}
