import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/data/models/eb_profile_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/data/repositories/eb_profile_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalEBProvider = ChangeNotifierProvider((ref) => GlobalEBProvider());

class GlobalEBProvider extends ChangeNotifier {
  EBProfileModel? _user;

  EBProfileModel? get user => _user;
  String get name => _user!.personalInformation!.firstName!;
  int get userId => _user!.id!;

  void setUser(EBProfileModel parentUser) {
    _user = parentUser;
    notifyListeners();
    logger.f(_user?.toJson());
  }
}

final getEBProfileProvider = FutureProvider.autoDispose<EBProfileModel>(
  (ref) async {
    final mobile = PersistentAuthStateService.authState.username;
    if (mobile == null) {
      throw Exception("Mobile number not found");
    }
    final response =
        await ref.read(ebProfileRepositoryProvider).getEBProfile(mobile);
    return response.fold(
      (error) {
        throw error;
      },
      (result) {
        final profile = result;
        ref.read(globalEBProvider).setUser(profile);
        return profile;
      },
    );
  },
);
