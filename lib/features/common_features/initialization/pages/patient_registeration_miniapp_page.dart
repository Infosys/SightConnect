import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:permission_handler/permission_handler.dart';

class PatientRegistrationMiniappPage extends StatefulWidget {
  const PatientRegistrationMiniappPage({
    required this.actionType,
    super.key,
    required this.displayName,
  });

  final MiniAppActionType actionType;
  final String displayName;

  @override
  State<PatientRegistrationMiniappPage> createState() =>
      _PatientRegistrationMiniappPageState();
}

class _PatientRegistrationMiniappPageState
    extends State<PatientRegistrationMiniappPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // requestPermission();
    });
  }

  Future<void> requestPermission() async {
    final permissions = [
      Permission.accessMediaLocation,
      Permission.camera,
    ];
    for (final permission in permissions) {
      final status = await permission.request();
      if (status.isDenied) {
        showPermissionDeniedAlert();
        return;
      }
    }
  }

  showPermissionDeniedAlert() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Permission Required"),
        content: const Text(
            "Please allow camera and storage permission to use this feature"),
        actions: [
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              // await requestPermission();
            },
            child: const Text("Allow"),
          ),
        ],
      ),
    );
  }

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
          injectionModel: MiniAppInjectionModel(
            action: widget.actionType,
            mobileNumber: validateMobile(),
            parentPatientId: PersistentAuthStateService.authState.userId,
            role: MiniAppInjectionModelRole.PATIENT,
          ),
          miniapp: MiniApp(
            id: "1",
            version: "1",
            name: widget.displayName,
            displayName: widget.displayName,
            sourceurl: "assets/miniapps/vt_register_patient.zip",
          ),
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
