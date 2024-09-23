import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/role_strategy/base_role_strategy.dart';
import 'package:eye_care_for_all/services/geocoding_service.dart';
import 'package:eye_care_for_all/services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientRoleStrategy extends BaseRoleStrategy {
  PatientRoleStrategy(WidgetRef ref) : super(ref);

  @override
  Future<bool> checkReferral(NavigatorState navigator) async {
    try {
      bool? referralResult =
          await UserInteractionHandler.showReferralCollectSheet(
              navigator.context);
      return referralResult ?? true;
    } catch (e) {
      debugPrint('Error in checkReferral: $e');
      return true;
    }
  }

  @override
  Future<bool> registerUser(NavigatorState navigator) async {
    try {
      final pinCode = await _getPincode();
      final status = await navigator.push<bool?>(
        MaterialPageRoute(
          builder: (context) => PatientRegistrationMiniappPage(
            actionType: MiniAppActionType.REGISTER,
            displayName: "Register Patient",
            pinCode: pinCode,
          ),
        ),
      );
      debugPrint("Registration Status: $status");
      return status == true;
    } catch (e) {
      debugPrint("Error in registerUser: $e");
      rethrow;
    }
  }

  Future<String> _getPincode() async {
    try {
      final locationData = await LocationService.getLocationWithPermissions();
      debugPrint("locationData: $locationData");

      if (locationData != null) {
        List<String> addressData =
            await GeocodingService.getPincodeFromLocation();
        final pinCode = addressData.isNotEmpty ? addressData[0] : "";
        return pinCode;
      } else {
        return "";
      }
    } catch (e) {
      debugPrint("Error in getting location data: $e");
      return "";
    }
  }
}

class VisionTechnicianRoleStrategy extends BaseRoleStrategy {
  VisionTechnicianRoleStrategy(WidgetRef ref) : super(ref);
}

class VisionGuardianRoleStrategy extends BaseRoleStrategy {
  VisionGuardianRoleStrategy(WidgetRef ref) : super(ref);
}

class VolunteerRoleStrategy extends BaseRoleStrategy {
  VolunteerRoleStrategy(WidgetRef ref) : super(ref);

  @override
  Future<bool> checkConsent(NavigatorState navigator) {
    return Future.value(true);
  }
}

class OptometristRoleStrategy extends BaseRoleStrategy {
  OptometristRoleStrategy(WidgetRef ref) : super(ref);

  @override
  Future<bool> checkConsent(NavigatorState navigator) {
    return Future.value(true);
  }
}

class EyeBankRoleStrategy extends BaseRoleStrategy {
  EyeBankRoleStrategy(WidgetRef ref) : super(ref);

  @override
  Future<bool> checkConsent(NavigatorState navigator) {
    return Future.value(true);
  }
}
