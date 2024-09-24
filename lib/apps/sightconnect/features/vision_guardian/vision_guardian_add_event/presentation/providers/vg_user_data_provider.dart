import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/performer_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/performers_profile_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_guardian_profile/data/models/vg_profile_model.dart';
import '../../../vision_guardian_profile/data/repositories/vg_authentication_repository_impl.dart';

var vgUserDataProvider = ChangeNotifierProvider((ref) => VGUserDataProvider());

class VGUserDataProvider extends ChangeNotifier {
  String? name;
  int? userId;
  int? userPatientId;

  int? get getUserId => userId;
  int? get getUserPatientId => userPatientId;
  String? get getName => name;

  void setUser(dynamic parentUser) {
    var activeRole = PersistentAuthStateService.authState.activeRole;

    if (activeRole == "ROLE_VOLUNTEER") {
      PerformerModel user = parentUser;
      name = user.profile!.firstName!;
      userId = user.id!;
      userPatientId = user.userId!;
    } else if (activeRole == "ROLE_VISION_GUARDIAN") {
      VgProfileModel user = parentUser;
      name = user.personalInformation?.firstName ?? "";
      userId = user.id!;
    }

    notifyListeners();
    logger.d({"vgUserDataProvider": {}});
  }
}

var getVgUserDataProvider = FutureProvider.autoDispose((ref) async {
  try {
    var activeRole = PersistentAuthStateService.authState.activeRole;
    if (activeRole == "ROLE_VOLUNTEER") {
      final response = await ref
          .read(performersProfileRepositoryProvider)
          .getPerformerProfile();
      ref.read(vgUserDataProvider).setUser(response);
      return response;
    } else if (activeRole == "ROLE_VISION_GUARDIAN") {
      final response = await ref
          .read(vgAuthenticationRepositoryProvider)
          .getVgProfile(PersistentAuthStateService.authState.username!);

      return response.fold((error) {
        throw error;
      }, (result) {
        final profile = result.first;
        ref.read(vgUserDataProvider).setUser(profile);
        return profile;
      });
    }

    logger.d("Invalid Role from getVgUserDataProvider");

    throw Exception("Invalid Role");
    // final response = await ref
    //     .read(performersProfileRepositoryProvider)
    //     .getPerformerProfile();
    // ref.read(vgUserDataProvider).setUser(response);
    // return response;
  } on DioException catch (e) {
    logger.d("Error in getVolunteerProfileProvider : $e");
    DioErrorHandler.handleDioError(e);
    rethrow;
  }
});
