import 'package:eye_care_for_all/core/models/consent_model.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/repositories/consent_repository_impl.dart';
import 'package:eye_care_for_all/core/repositories/keycloak_repository_impl.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/repositories/vg_authentication_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';

var initializationProvider =
    ChangeNotifierProvider.autoDispose((ref) => InitializationProvider(ref));

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
      rethrow;
    }
    // Triage Database logout
    await TriageDBHelper().deleteFullDatabase();
    // Shared Preference logout
    await SharedPreferenceService.clearAll();
    // Flutter Secure Storage logout
    await PersistentAuthStateService.authState.logout();
  }

  Future<void> resetProfile() async {
    await PersistentAuthStateService.authState.setActiveRole(null);
    // Triage Database logout
    if (!kIsWeb) {
      await TriageDBHelper().deleteFullDatabase();
    }
    // Shared Preference logout
    await SharedPreferenceService.clearAll();
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
      rethrow;
    }
  }

  Future<void> signIn({
    required String mobile,
    required String otp,
  }) async {
    await _ref
        .read(keycloakRepositoryProvider)
        .signIn(mobile: mobile, otp: otp);
  }

  Future<int> sendOtp({
    required String mobile,
  }) async {
    return await _ref.read(keycloakRepositoryProvider).sendOtp(mobile: mobile);
  }

  Future<bool> _checkVisionTechnicianExist(String phone, Role role) async {
    final response =
        await _ref.read(vtAuthenticationRepositoryProvider).getVtProfile(phone);
    return response.fold((failure) {
      logger.e("Vision Technician Profile Not Found: $failure");
      throw failure;
    }, (result) async {
      logger.d("Vision Technician Profile Found: $result");
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

  Future<bool> getEighteenPlusDeclarationStatus() async {
    final consentRepository = _ref.read(consentRepositoryProvider);
    final consent = await consentRepository.getConsent(type: "AGE_DECLARATION");
    if (consent.consentStatus == ConsentStatus.ACKNOWLEDGED) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> getConsentStatus() async {
    final consentRepository = _ref.read(consentRepositoryProvider);
    final consent = await consentRepository.getConsent(type: "PRIVACY_POLICY");
    if (consent.consentStatus == ConsentStatus.ACKNOWLEDGED) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> sumbitConsent({required ConsentModel consent}) async {
    final consentRepository = _ref.read(consentRepositoryProvider);
    await consentRepository.setConsent(
      ConsentModel(
        templateId: consent.templateId,
        consentVersion: consent.consentVersion,
        consentStatus: ConsentStatus.ACKNOWLEDGED,
        acknowledgeDate: DateTime.now().toUtc().toIso8601String(),
      ),
    );
  }
}
