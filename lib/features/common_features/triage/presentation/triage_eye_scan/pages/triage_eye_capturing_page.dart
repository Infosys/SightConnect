import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
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
  String _progressMessage = "Loading...";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeCamera(CameraLensDirection.back);
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
    if (_controller.value.isInitialized) {
      _controller.dispose();
    }
    super.dispose();
  }

  void setLoading([String message = "Loading..."]) {
    setState(() {
      isLoading = true;
      _progressMessage = message;
    });
  }

  void removeLoading() {
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    var model = ref.watch(triageEyeScanProvider);
    final loc = context.loc!;

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
              content: loc.eyeScanExitDialog,
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
            title: Text(
              "${loc.eyeScanTitle} - ${model.currentEye == TriageEyeType.RIGHT ? loc.rightEyeString : loc.leftEyeString}",
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColor.white,
              ),
            ),

            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     const SizedBox(width: AppSize.kmwidth),
            //     Text(
            //       loc.stepNumber("3", "3"),
            //       style: applyRobotoFont(
            //         color: AppColor.white,
            //         fontSize: 14,
            //         fontWeight: FontWeight.w400,
            //       ),
            //     ),
            //     const SizedBox(width: AppSize.kmwidth),
            //     Flexible(
            //       child: Text(
            //         loc.eyeScanTitle,
            //         style: applyRobotoFont(
            //           color: AppColor.white,
            //           fontSize: 16,
            //           fontWeight: FontWeight.w500,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
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
            progressMessage: _progressMessage,
            child: Stack(
              children: [
                CameraPreview(_controller),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await _toggleCamera();
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSize.kmpadding,
                            ),
                            child: Icon(
                              Icons.flip_camera_ios,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () async {
                            final image = await _takePicture(context);
                            logger.d("Image: $image");
                            if (image == null) {
                              Fluttertoast.showToast(
                                  msg: loc.imageCapturedToastMessage);
                              return;
                            }

                            if (model.currentEye == TriageEyeType.RIGHT) {
                              setLoading("Uploading Image");
                              await model.setRightEyeImage(image);
                              removeLoading();
                              model.setCurrentEye(TriageEyeType.LEFT);
                            } else if (model.currentEye == TriageEyeType.LEFT) {
                              setLoading("Uploading Image");
                              await model.setLeftEyeImage(image);
                              removeLoading();

                              await ref
                                  .read(triageEyeScanProvider)
                                  .saveTriageEyeScanResponseToDB();
                              final response =
                                  await ref.read(triageProvider).saveTriage(3);

                              response.fold(
                                (failure) async {
                                  logger.d({
                                    "Failure while saving in local db ":
                                        failure,
                                  });

                                  _showServerExceptionDialog(
                                    context,
                                    failure,
                                  );
                                },
                                (result) async {
                                  logger.d({
                                    "saveTriageEyeScanResponseToDB": "Success",
                                  });

                                  _showTestCompletionDialog(context, result);
                                },
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(AppSize.kmpadding),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColor.white,
                                width: 2,
                              ),
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Tooltip(
                          message: loc.eyeAssessmentToolTip,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSize.kmpadding,
                            ),
                            child: Icon(
                              Icons.info_outline,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Future<bool> _validateImage(XFile image) async {
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
    setLoading();
    final image = await _controller.takePicture();
    removeLoading();
    return image;
  }

  Future<XFile?> _takePicture(BuildContext context) async {
    try {
      final image = await _capturePicture(context);
      if (image == null) {
        return null;
      }

      final isVerfied = await _validateImage(image);
      if (!isVerfied) {
        return null;
      }
      return image;
    } on CameraException {
      Fluttertoast.showToast(msg: "Camera not found");
      return null;
    } catch (e) {
      logger.e("Camera exception: $e");
      Fluttertoast.showToast(msg: "Camera exception");
      return null;
    }
  }

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();

    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _initializeCamera(CameraLensDirection.back);
    } else {
      _initializeCamera(CameraLensDirection.front);
    }
    removeLoading();
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    removeLoading();
  }

  _showTestCompletionDialog(BuildContext context, TriagePostModel result) {
    final loc = context.loc!;
    showDialog(
      context: context,
      builder: (context) => BlurDialogBox(
        title: Text(
          loc.eyeCaptureCompletionDialogHeading,
          style: applyRobotoFont(
            color: AppColor.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          loc.eyeCaptureCompletionDialogBody,
          style: applyRobotoFont(
            color: AppColor.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () async {
              if (context.mounted && _controller.value.isInitialized) {
                _controller.dispose();
              }

              ref.read(triageStepperProvider).goToNextStep();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => TriageResultPage(
                    triageResult: result,
                  ),
                ),
              );
            },
            child: Text(
              loc.eyeCaptureCompletionDialogViewResult,
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

  _showServerExceptionDialog(BuildContext context, Failure failure) {
    final loc = context.loc!;
    showDialog(
        context: context,
        builder: (context) {
          return BlurDialogBox(
            title: Text(
              loc.eyeCaptureTriageSavedLocally,
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
                  if (context.mounted && _controller.value.isInitialized) {
                    _controller.dispose();
                  }

                  ref.read(resetProvider).reset();
                  ref.read(accessibilityProvider).resetBrightness();
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  //this will naviagte to local page for future ref
                  // Navigator.of(context).pushReplacement(
                  //   MaterialPageRoute(
                  //     builder: (context) => TriageResultPage(
                  //       triageResult: failure.data as TriagePostModel,
                  //     ),
                  //   ),
                  // );
                },
                child: Text(
                  loc.okButton,
                  style: applyRobotoFont(
                    color: AppColor.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          );
        });
  }
}
