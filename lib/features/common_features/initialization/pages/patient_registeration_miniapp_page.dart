import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/services/geocoding_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class PatientRegistrationMiniappPage extends StatelessWidget {
  final MiniAppActionType actionType;
  final String displayName;
  final String? mobileNumber;
  final String? parentPatientId;
  final String? pincode;

  const PatientRegistrationMiniappPage({
    super.key,
    required this.actionType,
    required this.displayName,
    this.mobileNumber,
    this.parentPatientId,
    this.pincode,
  });

  @override
  Widget build(BuildContext context) {
    // if true returned then api call was successful
    // if false returned then api call was unsuccessful
    // if null returned then user cancelled the process
    return TraceableWidget(
      actionName: "Patient Registration Miniapp Page View",
      child: MiniAppDisplayPage(
        onBack: () {
          Navigator.of(context).pop(null);
        },
        token: PersistentAuthStateService.authState.accessToken ?? "",
        injectionModel: MiniAppInjectionModel(
          action: actionType,
          mobileNumber: mobileNumber ?? validateMobile(),
          parentPatientId: parentPatientId ?? _getPateintId(),
          role: _getCurrentActiveRole(),
          token: PersistentAuthStateService.authState.accessToken,
          miniAppEnv: getMiniAppEnv(ApiConstant.appEnvironment),
          // pincode: pincode??""
        ),
        miniapp: MiniApp(
          id: "1",
          version: "1",
          name: displayName,
          displayName: displayName,
          sourceurl: ApiConstant.patientRegistrationMiniappUrl,
        ),
      ),
    );
  }

  MiniAppEnv getMiniAppEnv(AppEnvironment activeEnv) {
    switch (activeEnv) {
      case AppEnvironment.production:
        return MiniAppEnv.PROD;
      case AppEnvironment.staging:
        return MiniAppEnv.STAGING;
      case AppEnvironment.development:
        return MiniAppEnv.DEV;
    }
  }

  MiniAppInjectionModelRole? _getCurrentActiveRole() {
    final role = PersistentAuthStateService.authState.activeRole;
    if (role == "ROLE_PATIENT") {
      return MiniAppInjectionModelRole.PATIENT;
    } else if (role == "ROLE_OPTOMETRITIAN") {
      return MiniAppInjectionModelRole.OPTOMETRITIAN;
    } else if (role == "ROLE_VISION_TECHNICIAN") {
      return MiniAppInjectionModelRole.VISION_TECHNICIAN;
    } else if (role == "ROLE_VISION_GUARDIAN") {
      return MiniAppInjectionModelRole.VISION_GUARDIAN;
    }
    return null;
  }

  String validateMobile() {
    if (PersistentAuthStateService.authState.activeRole != "ROLE_PATIENT")
      return "";

    final mobile = PersistentAuthStateService.authState.username;
    if (mobile == null) return "";
    final mobileNumber = mobile.substring(3);

    return mobileNumber;
  }
}

_getPateintId() {
  final role = PersistentAuthStateService.authState.activeRole;
  return role == "ROLE_PATIENT"
      ? PersistentAuthStateService.authState.userId
      : null;
}
