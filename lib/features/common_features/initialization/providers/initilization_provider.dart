import 'package:eye_care_for_all/core/repositories/keycloak_repository_impl.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository_impl.dart';
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
      final response = await _ref
          .read(vtAuthenticationRepositoryProvider)
          .getVtProfile(phone);
      return response.fold((failure) {
        return false;
      }, (result) async {
        await PersistentAuthStateService.authState.saveUserProfileId(
          result.id.toString(),
        );
        return true;
      });
    } else if (role == Role.ROLE_PATIENT) {
      final response = await _ref
          .read(patientAuthenticationRepositoryProvider)
          .getPatientProfileByPhone(phone);

      return response.fold((failure) {
        return false;
      }, (result) async {
        await PersistentAuthStateService.authState.saveUserProfileId(
          result.profile!.patient!.patientId.toString(),
        );
        return true;
      });
    } else {
      return false;
    }
  }

  Future<void> logout() async {
    await _ref.read(keycloakRepositoryProvider).signOut();
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
}
