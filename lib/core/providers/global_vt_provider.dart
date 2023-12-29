import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalVTProvider = ChangeNotifierProvider((ref) => GlobalVTProvider());

class GlobalVTProvider extends ChangeNotifier {
  VtProfileModel? _user;

  VtProfileModel? get user => _user;
  String get name => _user!.personalInformation!.firstName!;
  int get userId => _user!.id!;

  void setUser(VtProfileModel parentUser) {
    _user = parentUser;
    notifyListeners();
    logger.f(_user?.toJson());
  }
}

var getVTProfileProvider = FutureProvider.autoDispose((ref) async {
  final response =
      await ref.read(vtAuthenticationRepositoryProvider).getVtProfile();

  return response.fold((error) {
    throw error;
  }, (result) {
    ref.read(globalVTProvider).setUser(result);
    return result;
  });
});
