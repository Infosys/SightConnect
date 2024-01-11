import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/camera_preview_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/image_preview.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/vt_eye_scan_stepper.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianEyeCapture extends ConsumerStatefulWidget {
  const VisionTechnicianEyeCapture({
    super.key,
    required this.cameras,
  });

  final List<CameraDescription> cameras;

  @override
  ConsumerState<VisionTechnicianEyeCapture> createState() =>
      _VisionTechnicianEyeCaptureState();
}

class _VisionTechnicianEyeCaptureState
    extends ConsumerState<VisionTechnicianEyeCapture> {
  CameraController? _controller;
  String imagePath = "";

  @override
  void initState() {
    super.initState();
    initiateCamera();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void initiateCamera() async {
    _controller = CameraController(widget.cameras[1], ResolutionPreset.max);
    _controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    bool isImageCaptured =
        ref.watch(vtCloseAssessmentHelperProvider).isImageCaptured;
    bool loading = ref.watch(vtCloseAssessmentHelperProvider).loading;
    // int currentStep = ref.watch(visionTechnicianEyeScanProvider).currentStep;

    if (!_controller!.value.isInitialized) {
      return Container();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Eye Scan",
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: AppSize.klheight),
              const VTEyeScanStepper(),
              const SizedBox(height: AppSize.klheight * 2),
              if (!isImageCaptured && !loading)
                CameraPreviewCard(controller: _controller!),
              if (loading)
                Container(
                  // margin: EdgeInsets.only(top: AppSize.width(context) * 0.2),
                  width: 536,
                  height: 714,
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: applyMediumShadow(),
                  ),
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(),
                ),
              if (isImageCaptured) const ImagePreview(),
            ],
          ),
        ),
      ),
    );
  }
}
