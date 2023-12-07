import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var traiageMemberProvider = ChangeNotifierProvider<TriageMemberProvider>((ref) {
  return TriageMemberProvider();
});

class TriageMemberProvider extends ChangeNotifier {
  late dynamic people;

  setPeople(dynamic people) {
    //check type of people
    this.people = people;
    notifyListeners();
  }
}
