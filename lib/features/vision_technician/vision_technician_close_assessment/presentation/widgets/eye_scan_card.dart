import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_eye_scan_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vision_technician_eye_scan_page_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeScanCard extends ConsumerWidget {
  const EyeScanCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String leftEyeImagePath =
        ref.watch(visionTechnicianEyeScanProvider).leftEyeImage.path;
    String rightEyeImagePath =
        ref.watch(visionTechnicianEyeScanProvider).rightEyeImage.path;
    String bothEyeImagePath =
        ref.watch(visionTechnicianEyeScanProvider).bothEyeImage.path;
    bool allImagesCaptured =
        ref.watch(visionTechnicianEyeScanProvider).allImagesCaptured;

    // return Container(
    //   width: 400,
    //   height: 100,
    //   margin: const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
    //   padding: const EdgeInsets.all(AppSize.kmpadding),
    //   decoration: BoxDecoration(
    //     color: AppColor.white,
    //     boxShadow: applyLightShadow(),
    //     borderRadius: BorderRadius.circular(AppSize.kmradius),
    //   ),
    // );

    return Container(
      width: AppSize.width(context) ,
      margin: const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Eye Scan",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          if (!allImagesCaptured)
            TextButton(
              onPressed: () async {
                var cameras = await availableCameras();
                if (cameras.isEmpty) {
                  return;
                }
                if (context.mounted) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) =>
                          VisionTechnicianEyeCapture(cameras: cameras),
                    ),
                  );
                }
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
                    "Take Picture",
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
            Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 100,
                  child: Image.file(
                    File(leftEyeImagePath),
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                SizedBox(
                  width: 150,
                  height: 100,
                  child: Image.file(
                    File(rightEyeImagePath),
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Image.file(
                    File(bothEyeImagePath),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
