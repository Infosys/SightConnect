import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/camera_preview_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/image_preview.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/vt_eye_scan_stepper.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianEyeCapture extends ConsumerStatefulWidget {
  const VisionTechnicianEyeCapture({
    super.key,
  });

  @override
  ConsumerState<VisionTechnicianEyeCapture> createState() =>
      _VisionTechnicianEyeCaptureState();
}

class _VisionTechnicianEyeCaptureState
    extends ConsumerState<VisionTechnicianEyeCapture> {
  String imagePath = "";

  @override
  void initState() {
    super.initState();
  }

  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    bool isImageCaptured =
        ref.watch(vtCloseAssessmentHelperProvider).isImageCaptured;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          loc.vtEyeScan,
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppSize.klheight),
              const VTEyeScanStepper(),
              const SizedBox(height: AppSize.klheight * 2),
              if (!isImageCaptured) const CameraPreviewCard(),
              // if (loading)
              //   Container(
              //     // margin: EdgeInsets.only(top: AppSize.width(context) * 0.2),
              //     width: 536,
              //     height: 714,
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              //     decoration: BoxDecoration(
              //       color: AppColor.white,
              //       boxShadow: applyMediumShadow(),
              //     ),
              //     alignment: Alignment.center,
              //     child: constCircularProgressIndicator.adaptive(),
              //   ),
              if (isImageCaptured) const ImagePreview(),
            ],
          ),
        ),
      ),
    );
  }
}
