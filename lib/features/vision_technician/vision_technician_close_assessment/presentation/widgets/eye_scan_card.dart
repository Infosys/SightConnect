import 'dart:io';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_eye_scan_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
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
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applycustomShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
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
          const SizedBox(height: AppSize.kmheight),
          if (!allImagesCaptured)
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VisionTechnicianEyeCapture(),
                  ),
                );
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(
                    horizontal: AppSize.kmpadding,
                    vertical: AppSize.kspadding,
                  ),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.klradius * 2),
                    side: const BorderSide(color: AppColor.primary),
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.camera_viewfinder,
                    color: AppColor.primary,
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Text(
                    loc.vtTakePicture,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primary,
                    ),
                  )
                ],
              ),
            ),
          const SizedBox(height: AppSize.ksheight),
          if (allImagesCaptured)
            Wrap(
              runSpacing: AppSize.klheight,
              spacing: AppSize.klwidth,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                    child: Image.file(
                      File(leftEyeImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                    child: Image.file(
                      File(rightEyeImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                    child: Image.file(
                      File(
                        bothEyeImagePath,
                      ),
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
