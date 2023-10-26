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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  ResolutionPreset defaultResolution = ResolutionPreset.medium;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await _initializeCamera(CameraLensDirection.front);
    });
  }

  _initializeCamera(CameraLensDirection lensDirection) {
    _controller = CameraController(
      widget.cameras.firstWhere(
        (element) => element.lensDirection == lensDirection,
      ),
      defaultResolution,
      enableAudio: false,
    );
    if (!_controller.value.isInitialized) {
      _initializeControllerFuture = _controller
          .initialize()
          .then((value) => setState(() {}))
          .catchError((e) {
        logger.d(e);
        Fluttertoast.showToast(msg: "Camera not found");
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
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
          builder: (context) => TriageExitAlertBox(
            content: AppLocalizations.of(context)!.eyeScanExitDialog,
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
                AppLocalizations.of(context)!.stepNumber("3", "3"),
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: AppSize.kmwidth),
              Flexible(
                  child: Text(
                AppLocalizations.of(context)!.eyeScanTitle,
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
                _toggleFlash();
              },
              child: Icon(
                _controller.value.flashMode == FlashMode.off
                    ? Icons.flash_off_outlined
                    : Icons.flash_on_outlined,
                color: AppColor.white,
              ),
            ),
          ],
        ),
        body: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomCenter,
                children: [
                  EyeScanCamera(
                    controller: _controller,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: EyeScanCameraControllers(
                      onCapture: () => _takePicture(current, context),
                      onFlash: () => _toggleFlash(),
                      flashMode: _controller.value.flashMode,
                      onSwitchCamera: () => _toggleCamera(),
                    ),
                  )
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future<void> _takePicture(TriageEye currentEye, BuildContext context) async {
    try {
      await _initializeControllerFuture;
      final image = await _controller.takePicture();
      if (currentEye == TriageEye.RIGHT_EYE) {
        ref.read(patientTriageEyeScanProvider).setRightEyeImage(image);
        ref.read(currentEyeProvider.notifier).state = TriageEye.LEFT_EYE;
        if (mounted) {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return TriageEyeScanDialog.showSuccessDialog(
                    context, TriageEye.RIGHT_EYE);
              });
        } else {
          ref.read(patientTriageEyeScanProvider).setLeftEyeImage(image);
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
      }
      if (!mounted) return;
    } on CameraException catch (e) {
      logger.d(e);
      Fluttertoast.showToast(msg: "Camera not found");
    }
  }

  Future<void> _toggleCamera() async {
    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _initializeCamera(CameraLensDirection.back);
    } else {
      _initializeCamera(CameraLensDirection.front);
    }
    setState(() {});
  }

  Future<void> _toggleFlash() async {
    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    setState(() {});
  }
}
