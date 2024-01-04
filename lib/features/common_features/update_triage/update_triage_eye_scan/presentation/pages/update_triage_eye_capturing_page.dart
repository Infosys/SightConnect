import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/provider/update_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/widgets/update_camera_controllers.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageEyeCapturingPage extends ConsumerStatefulWidget {
  const UpdateTriageEyeCapturingPage({
    required this.cameras,
    required this.diagnosticReportId,
    super.key,
  });
  final List<CameraDescription> cameras;
  final int diagnosticReportId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateTriageEyeCapturingPageState();
}

class _UpdateTriageEyeCapturingPageState
    extends ConsumerState<UpdateTriageEyeCapturingPage>
    with WidgetsBindingObserver {
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  bool isLoading = false;

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

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    ref.watch(updateTriageEyeScanProvider);

    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColor.black,
        appBar: AppBar(
          backgroundColor: AppColor.black,
          automaticallyImplyLeading: false,
          title: Text(
            context.loc!.eyeScanTitle,
            style: applyRobotoFont(
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
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
                child: UpdateEyeScanCameraControllers(
                  onCapture: () => _takePicture(context),
                  onFlash: () => _toggleFlash(),
                  onSwitchCamera: () => _toggleCamera(),
                  currentEye: ref.watch(updateTriageEyeScanProvider).currentEye,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Future<bool> _validateImage(XFile? image) async {
    XFile? verifiedImage = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UpdateTriageEyePreviewPage(imageFile: image),
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
    var navigator = Navigator.of(context);
    BuildContext dialogContext = context;
    try {
      final image = await _capturePicture(context);
      if (image == null) {
        return;
      }

      final isVerfied = await _validateImage(image);
      if (!isVerfied) {
        return;
      }
      var model = ref.read(updateTriageEyeScanProvider);

      if (model.currentEye == TriageEyeType.RIGHT) {
        model.setRightEyeImage(image);
        model.setCurrentEye(TriageEyeType.LEFT);
      } else if (model.currentEye == TriageEyeType.LEFT) {
        model.setLeftEyeImage(image);

        bool resposne =
            await model.updateEyeScanReport(widget.diagnosticReportId);
        if (resposne) {
          navigator.pop();
          navigator.pop();
          Fluttertoast.showToast(msg: "Eye scan report updated");
        } else {
          Fluttertoast.showToast(msg: "Something went wrong");
        }

        model.setCurrentEye(TriageEyeType.UNKNOWN);
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
}
