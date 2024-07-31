import 'dart:io';

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_eye_scan_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeScanCard extends ConsumerWidget {
  const EyeScanCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(vtCloseAssessmentHelperProvider);
    String leftEyeImagePath = model.leftEyeImage.path;
    String rightEyeImagePath = model.rightEyeImage.path;
    String bothEyeImagePath = model.bothEyeImage.path;
    bool allImagesCaptured = model.allImagesCaptured;
    final loc = context.loc!;
    return Container(
      width: AppSize.width(context),
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applycustomShadow(),
        borderRadius: BorderRadius.circular(AppSize.km),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vtEyeScan,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.km),
          if (!allImagesCaptured)
            OutlinedButton.icon(
                icon: const Icon(
                  CupertinoIcons.camera_viewfinder,
                  color: AppColor.primary,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VisionTechnicianEyeCapture(),
                    ),
                  );
                },
                label: Text(
                  loc.vtTakePicture,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.primary,
                  ),
                )),
          const SizedBox(height: AppSize.ks),
          if (allImagesCaptured)
            Wrap(
              runSpacing: AppSize.kl,
              spacing: AppSize.kl,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.km),
                    child: Image.file(
                      File(leftEyeImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.ks),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.km),
                    child: Image.file(
                      File(rightEyeImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.ks),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.km),
                    child: Image.file(
                      File(bothEyeImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
