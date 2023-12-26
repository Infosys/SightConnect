import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';

class PatientRegistrationMiniappPage extends StatelessWidget {
  const PatientRegistrationMiniappPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: MiniAppDisplayPage(
          onBack: () {
            Navigator.of(context).pop(true);
          },
          token: PersistentAuthStateService.authState.accessToken ?? "",
          parentPatientId: PersistentAuthStateService.authState.userId,
          mobile: PersistentAuthStateService.authState.username,
          miniapp: MiniApp(
            id: "1",
            version: "1",
            name: "Register Patient",
            displayName: "Register Patient",
            sourceurl: "assets/miniapps/vt_register_patient.zip",
          ),
        ),
      ),
    );
  }
}
