import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/repositories/vg_authentication_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalVGProvider = ChangeNotifierProvider((ref) => GlobalVGProvider());

class GlobalVGProvider extends ChangeNotifier {
  VgProfileModel? _user;

  VgProfileModel? get user => _user;
  String get name => _user?.personalInformation?.firstName ?? "";
  int get userId => _user!.id!;

  void setUser(VgProfileModel parentUser) {
    _user = parentUser;
    notifyListeners();
    logger.d({
      "GlobalVGProvider": {
        "user": _user?.toJson(),
      }
    });
  }
}

var getVGProfileProvider = FutureProvider.autoDispose((ref) async {
  final mobile = PersistentAuthStateService.authState.username;
  if (mobile == null) {
    throw Exception("Mobile number not found");
  }
  final response =
      await ref.read(vgAuthenticationRepositoryProvider).getVgProfile(mobile);

  return response.fold((error) {
    throw error;
  }, (result) {
    final profile = result.first;
    ref.read(globalVGProvider).setUser(profile);
    return profile;
  });
});
