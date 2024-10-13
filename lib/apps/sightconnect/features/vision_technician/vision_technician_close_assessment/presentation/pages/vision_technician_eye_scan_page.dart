/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/camera_preview_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/image_preview.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/vt_eye_scan_stepper.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.km,
          vertical: AppSize.km,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const VTEyeScanStepper(),
            const SizedBox(height: AppSize.kl),
            if (!isImageCaptured) const Expanded(child: CameraPreviewCard()),
            if (isImageCaptured) const Expanded(child: ImagePreview()),
          ],
        ),
      ),
    );
  }
}
