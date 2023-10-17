import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_result/pages/patient_triage_result_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/widgets/eye_scan_camera.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/patient_triage_eye_scan_provider.dart';
import '../widgets/camera_controllers.dart';

enum TriageEye { RIGHT_EYE, LEFT_EYE }

var currentEyeProvider = StateProvider<TriageEye>((ref) => TriageEye.RIGHT_EYE);

class PatientEyeCaptureTriagePage extends ConsumerStatefulWidget {
  static const String routeName = "/patientEyeCapturePage";
  const PatientEyeCaptureTriagePage({
    required this.cameras,
    super.key,
  });
  final List<CameraDescription> cameras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientEyeCaptureTriagePageState();
}

class _PatientEyeCaptureTriagePageState
    extends ConsumerState<PatientEyeCaptureTriagePage> {
  late CameraDescription cameraDescription;
  late CameraController cameraController;
  // static const maxPhotosAllowedPerEye = 2;
  // popup to show  which eye image to be taken
  // fix flash icon and fucntionality

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
    cameraDescription = widget.cameras.firstWhere(
        (element) => element.lensDirection == CameraLensDirection.front);
    cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.medium,
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
    var current = ref.watch(currentEyeProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.white,
        ),
        backgroundColor: AppColor.black,
        title: Text(
          current == TriageEye.RIGHT_EYE ? "Right Eye" : "Left Eye",
          style: const TextStyle(
            color: AppColor.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline_rounded,
              color: AppColor.white,
            ),
          ),
        ],
      ),
      body: LoadingOverlay(
        isLoading: isLoading,
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
                onCapture: () => _takePicture(current),
                onFlash: _toggleFlash,
                flashMode: cameraController.value.flashMode,
                onSwitchCamera: _toggleCamera,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _takePicture(TriageEye currentEye) async {
    try {
      setState(() {
        isLoading = true;
      });
      final image = await cameraController.takePicture();

      logger.d(image.path);
      setState(() {
        isLoading = false;
      });
      if (currentEye == TriageEye.RIGHT_EYE) {
        ref.read(patientTriageEyeScanProvider).setRightEyeImage(image);
        ref.read(currentEyeProvider.notifier).state = TriageEye.LEFT_EYE;
        _showSuccessDialog(TriageEye.RIGHT_EYE);
      } else {
        ref.read(patientTriageEyeScanProvider).setLeftEyeImage(image);
        _showSuccessDialog(TriageEye.LEFT_EYE);
      }
    } on CameraException catch (e) {
      logger.d(e);
      _showCameraNotFoundDialog();
    }
  }

  Future<void> _toggleCamera() async {
    setState(() {
      isLoading = true;
    });
    if (cameraController.description.lensDirection ==
        CameraLensDirection.front) {
      cameraController = CameraController(
        widget.cameras.firstWhere(
            (element) => element.lensDirection == CameraLensDirection.back),
        ResolutionPreset.medium,
      );
    } else {
      cameraController = CameraController(
        widget.cameras.firstWhere(
            (element) => element.lensDirection == CameraLensDirection.front),
        ResolutionPreset.medium,
      );
    }

    await cameraController.initialize();
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _toggleFlash() async {
    if (cameraController.value.flashMode == FlashMode.off) {
      await cameraController.setFlashMode(FlashMode.torch);
    } else {
      await cameraController.setFlashMode(FlashMode.off);
    }
    setState(() {});
  }

  _showCameraNotFoundDialog() {
    showDialog(
      context: context,
      builder: (context) => BlurDialogBox(
        title: Text(
          "Camera not found",
          style: applyRobotoFont(
            fontSize: 14,
            color: AppColor.red,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          "Please check your camera and try again.",
          style: applyFiraSansFont(
            fontSize: 14,
          ),
        ),
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

  _showSuccessDialog(TriageEye eye) {
    if (eye == TriageEye.RIGHT_EYE) {
      showDialog(
        context: context,
        builder: (context) => BlurDialogBox(
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.checkMark,
                  height: 40,
                  width: 40,
                  color: AppColor.green,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
              Text(
                "Done! right eye image is captured.",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          content: Text(
            "Now, let's test capture your left eye.",
            style: applyFiraSansFont(
              fontSize: 14,
            ),
          ),
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
    } else {
      showDialog(
        context: context,
        builder: (context) => BlurDialogBox(
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.checkMark,
                  height: 40,
                  width: 40,
                  color: AppColor.green,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
            ],
          ),
          content: Text(
            "Done! Left eye image is captured.",
            style: applyRobotoFont(
              fontSize: 14,
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                ref.read(patientTriageProvider).saveTriage();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PatientTriageResultPage(),
                  ),
                );
              },
              child: const Text("Proceed"),
            )
          ],
        ),
      );
    }
  }
}
