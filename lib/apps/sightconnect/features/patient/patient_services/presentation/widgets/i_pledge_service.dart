import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart'
    as miniappModel;
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/api_constant.dart';
import '../../../../../../../shared/services/persistent_auth_service.dart';

class IPledgeService extends ConsumerWidget {
  const IPledgeService({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeUser = ref.watch(globalPatientProvider).activeUser;
    final dob = "${activeUser?.profile?.patient?.dayOfBirth}-"
        "${activeUser?.profile?.patient?.monthOfBirth}-"
        "${activeUser?.profile?.patient?.yearOfBirth}";

    final List<AddressModel> addresses =
        (activeUser?.profile?.patient?.address?.length ?? 0) == 0
            ? []
            : activeUser?.profile?.patient?.address ?? [];

    return MiniAppDisplayPage(
      onBack: () {
        Navigator.of(context).pop(null);
      },
      token: PersistentAuthStateService.authState.accessToken ?? "",
      injectionModel: MiniAppInjectionModel(
        additionalData: {
          'name': activeUser?.profile?.patient?.name ?? "",
          'dob': dob,
          'age': activeUser?.profile?.patient?.age?.toString() ?? "",
          'gender':
              activeUser?.profile?.patient?.gender.toString().split(".").last ??
                  "",
          'email': activeUser?.profile?.patient?.email ?? "",
          'doorNumber': addresses.isEmpty ? "" : addresses.first.ward ?? "",
          'street': addresses.isEmpty ? "" : addresses.first.line ?? "",
          'district': addresses.isEmpty ? "" : addresses.first.district ?? "",
          'city': addresses.isEmpty ? "" : addresses.first.town ?? "",
          'state': addresses.isEmpty ? "" : addresses.first.state ?? "",
          'pincode': addresses.isEmpty ? "" : addresses.first.pincode ?? "",
        },
        action: MiniAppActionType.ADD_MEMBER,
        mobileNumber: validateMobile(),
        parentPatientId: _getPateintId(),
        role: _getCurrentActiveRole(),
        token: PersistentAuthStateService.authState.accessToken,
        miniAppEnv: getMiniAppEnv(ApiConstant.appEnvironment),
        // pincode: pincode??""
      ),
      miniapp: miniappModel.MiniApp(
        id: "1",
        version: "1",
        name: "iPledge",
        displayName: "iPledge",
        sourceurl: "https://healthconnect.infosysapps.com/ipledge/",
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
    if (PersistentAuthStateService.authState.activeRole != "ROLE_PATIENT") {
      return "";
    }

    final mobile = PersistentAuthStateService.authState.username;
    if (mobile == null) return "";
    final mobileNumber = mobile.substring(3);

    return mobileNumber;
  }

  _getPateintId() {
    final role = PersistentAuthStateService.authState.activeRole;
    return role == "ROLE_PATIENT"
        ? PersistentAuthStateService.authState.userId
        : null;
  }
}
