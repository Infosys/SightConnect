import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class PatientRegistrationMiniappPage extends StatelessWidget {
  const PatientRegistrationMiniappPage({
    required this.actionType,
    super.key,
    required this.displayName,
  });

  final MiniAppActionType actionType;
  final String displayName;

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
          mobileNumber: validateMobile(),
          parentPatientId: PersistentAuthStateService.authState.userId,
          role: MiniAppInjectionModelRole.PATIENT,
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

  String validateMobile() {
    final mobile = PersistentAuthStateService.authState.username;
    if (mobile == null) return "";
    final mobileNumber = mobile.substring(3);

    return mobileNumber;
  }
}
