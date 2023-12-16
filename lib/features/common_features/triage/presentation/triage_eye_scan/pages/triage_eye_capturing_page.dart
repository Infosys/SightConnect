import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../provider/triage_eye_scan_provider.dart';
import '../widgets/camera_controllers.dart';

class TriageEyeCapturingPage extends ConsumerStatefulWidget {
  const TriageEyeCapturingPage({
    required this.cameras,
    super.key,
  });
  final List<CameraDescription> cameras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientTriageEyeCapturingPageState();
}

class _PatientTriageEyeCapturingPageState
    extends ConsumerState<TriageEyeCapturingPage> with WidgetsBindingObserver {
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera(CameraLensDirection.front);
  }

  _initializeCamera(CameraLensDirection lensDirection) async {
    _controller = CameraController(
      widget.cameras.firstWhere(
        (element) => element.lensDirection == lensDirection,
      ),
      defaultResolution,
    );

    await _controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      logger.d(e);
      Fluttertoast.showToast(msg: e);
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _controller;
    if (!cameraController.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCamera(cameraController.description.lensDirection);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    ref.watch(triageEyeScanProvider);

    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return PopScope(
        canPop: false,
        onPopInvoked: (value) {
          if (value) {
            return;
          }
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: context.loc!.eyeScanExitDialog,
            ),
          );
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColor.black,
          drawer: const TriageStepsDrawer(),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  context.loc!.stepNumber("3", "3"),
                  style: applyRobotoFont(
                    color: AppColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: AppSize.kmwidth),
                Flexible(
                  child: Text(
                    context.loc!.eyeScanTitle,
                    style: applyRobotoFont(
                      color: AppColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              InkWell(
                onTap: () async {
                  await _toggleFlash();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  child: Icon(
                    _controller.value.flashMode == FlashMode.off
                        ? Icons.flash_off
                        : Icons.flash_on,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
          body: LoadingOverlay(
            isLoading: isLoading,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1 / _controller.value.aspectRatio,
                  child: CameraPreview(_controller),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: EyeScanCameraControllers(
                    onCapture: () => _takePicture(context),
                    onFlash: () => _toggleFlash(),
                    onSwitchCamera: () => _toggleCamera(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Future<bool> _validateImage(XFile? image) async {
    XFile? verifiedImage = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TriageEyePreviewPage(imageFile: image),
      ),
    );
    if (verifiedImage != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    setState(() {
      isLoading = true;
    });
    final image = await _controller.takePicture();
    setState(() {
      isLoading = false;
    });
    return image;
  }

  Future<void> _takePicture(BuildContext context) async {
    try {
      final image = await _capturePicture(context);
      if (image == null) {
        return;
      }

      final isVerfied = await _validateImage(image);
      if (!isVerfied) {
        return;
      }
      var model = ref.read(triageEyeScanProvider);

      if (model.currentEye == TriageEyeType.RIGHT) {
        model.setRightEyeImage(image);
        model.setCurrentEye(TriageEyeType.LEFT);
      } else if (model.currentEye == TriageEyeType.LEFT) {
        model.setLeftEyeImage(image);
        model.setCurrentEye(TriageEyeType.UNKNOWN);

        if (mounted) {
          final navigator = Navigator.of(context);
          final response = await _showTestCompletionDialog(context);
          if (response) {
            setState(() {
              isLoading = true;
            });
            await ref
                .read(triageEyeScanProvider)
                .saveTriageEyeScanResponseToDB();
            final response = await ref.read(triageProvider).saveTriage();
            setState(() {
              isLoading = false;
            });
            response.fold((failure) {
              showDialog(
                context: context,
                builder: (context) => _showServerExceptionDialog(
                  context,
                  failure,
                ),
              );
            }, (result) {
              ref.read(triageStepperProvider).goToNextStep();
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => TriageResultPage(
                    triageResult: result,
                  ),
                ),
              );
            });
          }
        }
      }
    } on CameraException {
      Fluttertoast.showToast(msg: "Camera not found");
    } catch (e) {
      Fluttertoast.showToast(msg: "Something went wrong");
    }
  }

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _initializeCamera(CameraLensDirection.back);
    } else {
      _initializeCamera(CameraLensDirection.front);
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setState(() {
      isLoading = true;
    });

    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    setState(() {
      isLoading = false;
    });
  }

  _showTestCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BlurDialogBox(
        title: Text(
          "Test Completed",
          style: applyRobotoFont(
            color: AppColor.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          "You have completed the test. Please click on the button below to view the result.",
          style: applyRobotoFont(
            color: AppColor.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              final navigator = Navigator.of(context);
              navigator.pop(true);
            },
            child: Text(
              "View Result",
              style: applyRobotoFont(
                color: AppColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_showServerExceptionDialog(
  BuildContext context,
  Failure failure,
) {
  return BlurDialogBox(
    title: Text(
      "Triage Saved Locally",
      style: applyRobotoFont(
        color: AppColor.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    content: Text(
      failure.errorMessage,
      style: applyRobotoFont(
        color: AppColor.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TriageResultPage(
                triageResult: failure.data as TriageResponseModel,
              ),
            ),
          );
        },
        child: Text(
          "Ok",
          style: applyRobotoFont(
            color: AppColor.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
