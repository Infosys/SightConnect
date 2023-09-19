import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/modals/camera_not_found.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/modals/camera_snack_bar.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_report_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/pages/assessment_result_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TriageEye { RIGHT_EYE, LEFT_EYE }

class PatientEyeCaptureTriagePage extends StatefulHookConsumerWidget {
  static const String routeName = "/patientEyeCapturePage";
  const PatientEyeCaptureTriagePage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientEyeCaptureTriagePageState();
}

class _PatientEyeCaptureTriagePageState
    extends ConsumerState<PatientEyeCaptureTriagePage> {
  late CameraDescription? cameraDescription;
  bool isLoading = false;
  late CameraController? cameraController;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    await _intializeCamera();
    if (!cameraController!.value.isInitialized && context.mounted) {
      showCameraNotFound(context);
    }
  }

  _intializeCamera() async {
    setState(() {
      isLoading = true;
    });
    final cameras = await availableCameras();
    cameraDescription = cameras.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.back);

    cameraController = CameraController(
      cameraDescription!,
      ResolutionPreset.max,
    );
    await cameraController!.initialize();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    cameraController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentEye = useState<TriageEye>(TriageEye.RIGHT_EYE);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            currentEye.value == TriageEye.RIGHT_EYE ? "Right Eye" : "Left Eye"),
      ),
      body: isLoading
          ? Container(
              color: AppColor.kWhite,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : Consumer(
              builder: (context, ref, child) => Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CameraPreview(cameraController!),
                    Padding(
                      padding: const EdgeInsets.all(AppSize.klpadding),
                      child: FloatingActionButton(
                        backgroundColor: AppColor.kGrey,
                        onPressed: () async {
                          var navigator = Navigator.of(context);
                          var status = await _takePicture();
                          log(status.toString());
                          if (status != null) {
                            await _showCompletionAlert();
                            if (currentEye.value == TriageEye.LEFT_EYE) {
                              navigator.push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AssessmentResultPage(),
                                  fullscreenDialog: true,
                                ),
                              );
                            }

                            currentEye.value = TriageEye.LEFT_EYE;
                          }
                        },
                        child: const Icon(Icons.camera),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  Future<XFile?> _takePicture() async {
    if (!cameraController!.value.isInitialized) {
      showCameraSnackBar(context, "Error: select a camera first.");
      return null;
    }
    if (cameraController!.value.isTakingPicture) {
      return null;
    }
    try {
      final image = await cameraController!.takePicture();
      return image;
    } on CameraException catch (e) {
      showCameraSnackBar(context, "Error: ${e.code}\n${e.description}");

      return null;
    }
  }

  _showCompletionAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Image.asset(
          AppImages.checkMark,
          height: 40,
          width: 40,
          color: AppColor.kGreen,
        ),
        content: const Text("Your eye scan is completed for Right eye."),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Ok"),
          )
        ],
      ),
    );
  }
}
