import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/modals/camera_capture_alert.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/modals/camera_snack_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/local/fake_data_source_cataract.dart';
import '../../modals/camera_not_found.dart';

class PatientEyeCapturePage extends StatefulHookConsumerWidget {
  static const String routeName = "/patientEyeCapturePage";
  const PatientEyeCapturePage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientEyeCapturePageState();
}

class _PatientEyeCapturePageState extends ConsumerState<PatientEyeCapturePage> {
  late CameraDescription? cameraDescription;
  bool isLoading = false;
  bool isProcessing = false;
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
    var eye = ref.watch(patientEyeScanProvider).currentEye == Eye.RIGHT_EYE
        ? "Right Eye"
        : "Left Eye";
    return Scaffold(
      appBar: CustomAppbar(
        title: Text("Eye Scanner - $eye"),
      ),
      body: isLoading
          ? Container(
              color: AppColor.white,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : Consumer(
              builder: (context, ref, child) => Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    if (ref.watch(patientEyeScanProvider).rightEyeImage ==
                            null ||
                        ref.watch(patientEyeScanProvider).leftEyeImage == null)
                      CameraPreview(cameraController!),
                    // if (ref.watch(patientEyeScanProvider).rightEyeImage != null)
                    //   Image.file(
                    //     ref.watch(patientEyeScanProvider).rightEyeImage!,
                    //     fit: BoxFit.cover,
                    //   ),
                    // if (ref.watch(patientEyeScanProvider).leftEyeImage != null)
                    //   Image.file(
                    //     ref.watch(patientEyeScanProvider).leftEyeImage!,
                    //     fit: BoxFit.cover,
                    //   ),
                    Padding(
                      padding: const EdgeInsets.all(AppSize.klpadding),
                      child: FloatingActionButton(
                        backgroundColor: AppColor.grey,
                        onPressed: _takePicture,
                        child: const Icon(Icons.camera),
                      ),
                    ),
                    if (isProcessing)
                      Positioned.fill(
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
    );
  }

  _takePicture() {
    if (!cameraController!.value.isInitialized) {
      showCameraSnackBar(context, "Error: select a camera first.");
      return null;
    }
    if (cameraController!.value.isTakingPicture) {
      return null;
    }
    setState(() {
      isProcessing =
          true; // Set the flag to indicate that the picture is being processed
    });
    try {
      cameraController!.takePicture().then((image) {
        var eye = ref.watch(patientEyeScanProvider).currentEye;
        if (eye == Eye.RIGHT_EYE) {
          ref.read(patientEyeScanProvider).setRightEyeImage(image);
        } else {
          ref.read(patientEyeScanProvider).setLeftEyeImage(image);
        }
        cameraCaptureAlert(context, eye);
      });
    } on CameraException catch (e) {
      showCameraSnackBar(context, "Error: ${e.code}\n${e.description}");

      return null;
    }
  }
}
