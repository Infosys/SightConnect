import 'package:camera/camera.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/widgets/camera_controllers.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/widgets/eye_scan_camera.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/widgets/eye_scan_camera_alert_box.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TriageEye { RIGHT_EYE, LEFT_EYE }

class PatientEyeCaptureTriagePage extends StatefulHookConsumerWidget {
  static const String routeName = "/patientEyeCapturePage";
  const PatientEyeCaptureTriagePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientEyeCaptureTriagePageState();
}

class _PatientEyeCaptureTriagePageState
    extends ConsumerState<PatientEyeCaptureTriagePage> {
  late CameraDescription cameraDescription;
  late CameraController cameraController;

  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    await _intializeCamera();
    if (!cameraController.value.isInitialized) {
      _showCameraNotFoundDialog();
    }
  }

  _intializeCamera() async {
    setState(() {
      isLoading = true;
    });
    cameraDescription = cameras.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.front);
    cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.max,
    );
    await cameraController.initialize();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentEye = useState<TriageEye>(TriageEye.RIGHT_EYE);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentEye.value == TriageEye.RIGHT_EYE ? "Right Eye" : "Left Eye",
        ),
      ),
      body: LoadingOverlay(
        isLoading: isLoading,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.bottomCenter,
            children: [
              EyeScanCamera(
                controller: cameraController,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: EyeScanCameraControllers(
                  onCapture: () async {
                    try {
                      setState(() {
                        isLoading = true;
                      });
                      final image = await _takePicture();
                      logger.d(image.path);
                      setState(() {
                        isLoading = false;
                      });

                      _showSuccessDialog(currentEye.value);
                    } catch (e) {
                      logger.d(e);
                      _showCameraNotFoundDialog();
                    }
                  },
                  onFlash: () {
                    logger.d("Flash");
                    cameraController.setFlashMode(
                      cameraController.value.flashMode == FlashMode.off
                          ? FlashMode.torch
                          : FlashMode.off,
                    );
                  },
                  isFlashOn: cameraController.value.flashMode == FlashMode.off
                      ? false
                      : true,
                  onSwitchCamera: () {
                    logger.d("Switch Camera");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<XFile> _takePicture() async {
    try {
      final image = await cameraController.takePicture();
      return image;
    } on CameraException catch (e) {
      logger.d(e);
      rethrow;
    }
  }

  _showCameraNotFoundDialog() {
    showDialog(
      context: context,
      builder: (context) => const EyeScanCameraAlertBox(
        title: "Camera not found",
        message: "Please check your camera and try again.",
      ),
    );
  }

  _showSuccessDialog(TriageEye eye) {
    showDialog(
      context: context,
      builder: (context) => EyeScanCameraAlertBox(
        title: "Success",
        message: eye == TriageEye.RIGHT_EYE
            ? "Right eye image captured successfully."
            : "Left eye image captured successfully.",
      ),
    );
  }
}
