import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/widgets/triage_eye_scan_dialog.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/widgets/eye_scan_camera.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_member_selection/widget/patient_triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
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
      if (mounted) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return TriageEyeScanDialog.showCameraNotFound(context);
            });
      }
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
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var current = ref.watch(currentEyeProvider);
    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => const TriageExitAlertBox(
            content:
                "Eye Scan helps to understand more about your eye problem. Do you really wish to exit?",
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const PatientTriageStepsDrawer(),
        appBar: CustomAppbar(
          iconTheme: const IconThemeData(
            color: AppColor.white,
          ),
          actionsIconTheme: const IconThemeData(
            color: AppColor.white,
          ),
          backgroundColor: AppColor.black,
          leadingWidth: 60,
          titleSpacing: 0.0,
          centerTitle: false,
          leadingIcon: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(
                AppIcon.hamburgerIcon,
                color: AppColor.white,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: AppSize.kmwidth),
              Text(
                "3 of 3",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: AppSize.kmwidth),
              Flexible(
                  child: Text(
                "Eye Scan",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                _toggleFlash();
              },
              icon: Icon(
                cameraController.value.flashMode == FlashMode.off
                    ? Icons.flash_off_outlined
                    : Icons.flash_on_outlined,
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
                  onCapture: () => _takePicture(current, context),
                  onFlash: _toggleFlash,
                  flashMode: cameraController.value.flashMode,
                  onSwitchCamera: _toggleCamera,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _takePicture(TriageEye currentEye, BuildContext context) async {
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
        // _showSuccessDialog(TriageEye.RIGHT_EYE);
        if (mounted) {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return TriageEyeScanDialog.showSuccessDialog(
                    context, TriageEye.RIGHT_EYE);
              });
        }
      } else {
        ref.read(patientTriageEyeScanProvider).setLeftEyeImage(image);
        // _showSuccessDialog(TriageEye.LEFT_EYE);
        if (mounted) {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return TriageEyeScanDialog.showSuccessDialog(
                    context, TriageEye.LEFT_EYE);
              });
        }
      }
    } on CameraException catch (e) {
      logger.d(e);
      // _showCameraNotFoundDialog();
      if (mounted) {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return TriageEyeScanDialog.showCameraNotFound(context);
            });
      }
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
}
