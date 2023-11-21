import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/user_profile.dart';

var userDetailsProvider =
    ChangeNotifierProvider((ref) => UserDetailsProvider());

class UserDetailsProvider extends ChangeNotifier {
  UserProfile? userProfile;
  List<RelatedParty> familyMembers = [];
  UserDetailsProvider() {
    _getProfile();
  }
  Future<void> _getProfile() async {
    await Future.delayed(const Duration(seconds: 2));

    notifyListeners();
  }

  Future<void> updateCurrentProfile(int selectedPatientId) async {
    notifyListeners();
  }
}
