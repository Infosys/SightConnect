import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';

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
    return MiniAppDisplayPage(
      onBack: () {
        Navigator.of(context).pop(false);
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
        sourceurl:
            "https://eyecare4all-dev.infosysapps.com/patient-registration/",
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
