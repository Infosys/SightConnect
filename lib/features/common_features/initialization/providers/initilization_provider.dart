import 'package:eye_care_for_all/core/repositories/keycloak_repository_impl.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/repositories/vg_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';

var initializationProvider =
    ChangeNotifierProvider((ref) => InitializationProvider(ref));

class InitializationProvider extends ChangeNotifier {
  final Ref _ref;
  InitializationProvider(this._ref);

  Future<bool> checkUserAlreadyExist(Role role) async {
    final phone = PersistentAuthStateService.authState.username;
    if (phone == null) {
      return false;
    }

    if (role == Role.ROLE_VISION_TECHNICIAN) {
      return await _checkVisionTechnicianExist(phone, role);
    } else if (role == Role.ROLE_PATIENT) {
      return await _checkPatientExist(phone, role);
    } else if (role == Role.ROLE_VISION_GUARDIAN) {
      return await _checkVisionGuardianExist(phone, role);
    } else if (role == Role.ROLE_OPTOMETRIST) {
      //only for testing
      return true;
    } else {
      throw ServerFailure(errorMessage: "Invalid Role");
    }
  }

  Future<void> logout() async {
    try {
      //keycloak logout
      await _ref.read(keycloakRepositoryProvider).signOut();
    } catch (e) {
      logger.e(
          "Apologies, we encountered a logout error in the mobile app. from keycloak: $e");
      rethrow;
    }

    // Flutter Secure Storage logout
    await PersistentAuthStateService.authState.logout();
    // Triage Database logout
    await TriageDBHelper().discardLocalTriageEntries();
    // Shared Preference logout
    await SharedPreferenceService.clear();
  }

  Future<KeycloakResponse?> refreshTokens({
    required String refreshToken,
  }) async {
    try {
      final response = await _ref
          .read(keycloakRepositoryProvider)
          .refreshTokens(refreshToken: refreshToken);
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<void> signIn({
    required String mobile,
    required String otp,
  }) async {
    try {
      await _ref
          .read(keycloakRepositoryProvider)
          .signIn(mobile: mobile, otp: otp);
    } catch (e) {
      rethrow;
    }
  }

  Future<int> sendOtp({
    required String mobile,
  }) async {
    try {
      return await _ref
          .read(keycloakRepositoryProvider)
          .sendOtp(mobile: mobile);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<bool> _checkVisionTechnicianExist(String phone, Role role) async {
    final response =
        await _ref.read(vtAuthenticationRepositoryProvider).getVtProfile(phone);
    return response.fold((failure) {
      throw failure;
    }, (result) async {
      if (result.isEmpty) {
        return false;
      } else {
        if (result.first.practiceGrants == null) {
          return false;
        }

        bool isRoleAvailable = result.first.practiceGrants!
            .any((element) => element.grantRole == role.name);

        if (isRoleAvailable) {
          final profile = result.first;
          await PersistentAuthStateService.authState.saveUserProfileId(
            profile.id.toString(),
          );
          return true;
        } else {
          // if result is empty then user is not found
          return false;
        }
      }
    });
  }

  Future<bool> _checkPatientExist(String phone, Role role) async {
    final response = await _ref
        .read(patientAuthenticationRepositoryProvider)
        .getPatientProfileByPhone(phone);

    return response.fold((failure) {
      logger.e("Patient Profile Not Found: $failure");
      if (failure is NotFoundFailure) {
        return false;
      }

      throw failure;
    }, (result) async {
      await PersistentAuthStateService.authState.saveUserProfileId(
        result.profile!.patient!.patientId.toString(),
      );
      return true;
    });
  }

  Future<bool> _checkVisionGuardianExist(String phone, Role role) async {
    final response =
        await _ref.read(vgAuthenticationRepositoryProvider).getVgProfile(phone);
    return response.fold((failure) {
      throw failure;
    }, (result) async {
      if (result.isEmpty) {
        // if result is empty then user is not found
        return false;
      } else {
        if (result.first.practiceGrants == null) {
          return false;
        }
        bool isRoleAvailable = result.first.practiceGrants!
            .any((element) => element.grantRole == role.name);

        if (isRoleAvailable) {
          final profile = result.first;
          await PersistentAuthStateService.authState.saveUserProfileId(
            profile.id.toString(),
          );
          return true;
        } else {
          // if result is empty then user is not found
          return false;
        }
      }
    });
  }
}
