import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuadianAddMemberProvider = ChangeNotifierProvider(
  (ref) => VisionGuardianAddMemberProvider(),
);

class VisionGuardianAddMemberProvider extends ChangeNotifier {
  final _memberData = [
    {
      "name": "Ritu Gupta",
      "mobile": "+91 8876543321",
    }
  ];

  //get member data
  List get getMemberData => _memberData;

  void addMemberData(String name, String mobile) {
    _memberData.add({
      "name": name,
      "mobile": mobile,
    });
    notifyListeners();
  }

  void removeMemberData(int index) {
    _memberData.removeAt(index);
    notifyListeners();
  }
}
