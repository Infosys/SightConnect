import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';

class PatientRegistrationMiniappPage extends StatelessWidget {
  const PatientRegistrationMiniappPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MiniAppDisplayPage(
        miniapp: MiniApp(
          id: "1",
          version: "1",
          name: "Register Patient",
          displayName: "Register Patient",
          sourceurl: "assets/miniapps/vt_register_patient.zip",
        ),
      ),
    );
  }
}



/// Provider  
/// BLOC 
/// Riverpod 
/// GETX 
/// MOBX


  