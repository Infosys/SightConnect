/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class PatientRegistrationMiniappPage extends StatelessWidget {
  final MiniAppActionType actionType;
  final String displayName;
  final String? mobileNumber;
  final String? parentPatientId;
  final String? pinCode;

  const PatientRegistrationMiniappPage({
    super.key,
    required this.actionType,
    required this.displayName,
    this.mobileNumber,
    this.parentPatientId,
    this.pinCode,
  });

  // String pinCode = "";
  @override
  Widget build(BuildContext context) {
    // if true returned then api call was successful
    // if false returned then api call was unsuccessful
    // if null returned then user cancelled the process
    return TraceableWidget(
      actionName: "Patient Registration Miniapp Page View",
      child: MiniAppDisplayPage(
        onBack: () {
          if (actionType == MiniAppActionType.REGISTER) {
            Fluttertoast.showToast(
                msg:
                    "Oops! It looks like you tried to navigate back. Please complete the registration process");
          } else {
            Navigator.of(context).pop(null);
          }
        },
        token: PersistentAuthStateService.authState.accessToken ?? "",
        injectionModel: MiniAppInjectionModel(
          action: actionType,
          mobileNumber: mobileNumber ?? validateMobile(),
          parentPatientId: parentPatientId ?? _getPateintId(),
          role: _getCurrentActiveRole(),
          token: PersistentAuthStateService.authState.accessToken,
          miniAppEnv: getMiniAppEnv(ApiConstant.appEnvironment),
          pinCode: pinCode,
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
    } else if (role == "ROLE_VOLUNTEER") {
      return MiniAppInjectionModelRole.VOLUNTEER;
    }
    return null;
  }

  String validateMobile() {
    if (PersistentAuthStateService.authState.activeRole != "ROLE_PATIENT") {
      return "";
    }

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
