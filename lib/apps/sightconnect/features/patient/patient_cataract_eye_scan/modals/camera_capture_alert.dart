/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:ui';

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/data/local/fake_data_source_cataract.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_report_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/pages/patient_eyes_capture_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void cameraCaptureAlert(BuildContext context, Eye eye) {
  showGeneralDialog(
    barrierDismissible: false,
    barrierLabel: '',
    barrierColor: AppColor.blackOpacity, //black38
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      title: Image.asset(
        AppImages.checkMark,
        height: 40,
        width: 40,
        color: AppColor.green,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Eye Scan complete",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          eye == Eye.RIGHT_EYE
              ? Text(
                  'Proceed with Left eye scan',
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                )
              : Text(
                  "Proceed to report processing",
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                )
        ],
      ),
      elevation: 2,
      actionsAlignment: MainAxisAlignment.end,
      actions: [
        Consumer(
          builder: (context, ref, child) => TextButton(
              onPressed: eye == Eye.RIGHT_EYE
                  ? () {
                      ref.read(patientEyeScanProvider).resetRightImage(eye);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PatientEyeCapturePage(),
                        ),
                      );
                    }
                  : () {
                      ref.read(patientEyeScanProvider).resetLeftImage(eye);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PatientEyeCapturePage(),
                        ),
                      );
                    },
              child: Text(
                'Rescan',
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.primary,
                ),
              )),
        ),
        Consumer(builder: (context, ref, child) {
          bool isLoading = true;
          return TextButton(
            onPressed: eye == Eye.RIGHT_EYE
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PatientEyeCapturePage(),
                      ),
                    );
                  }
                : () async {
                    // ref.read(patientEyeScanProvider).resetImages(eye);
                    ref
                        .read(patientEyeScanProvider)
                        .setCurrentEye(Eye.RIGHT_EYE);

                    if (isLoading == true) {
                      showDialog(
                        context: context,
                        builder: (context) => const Center(
                          child: CircularProgressIndicator.adaptive(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColor.primary,
                            ),
                          ),
                        ),
                        barrierDismissible: false,
                      );
                    }
                    ref.read(patientEyeScanProvider).setScanType();
                    ref.read(patientEyeScanProvider).scanType ==
                            ScanType.Cataract
                        ? await ref
                            .read(patientEyeScanProvider)
                            .processModel(context)
                        : await ref
                            .read(patientEyeScanProvider)
                            .processKeratoconus();
                    isLoading = false;
                    if (isLoading == false && context.mounted) {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PatientEyesReportPage()),
                          (route) => route.isFirst);
                    }
                  },
            child: Text(
              'Ok',
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.primary,
              ),
            ),
          );
        }),
      ],
    ),
    transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4 * anim1.value,
        sigmaY: 4 * anim1.value,
      ),
      child: FadeTransition(
        opacity: anim1,
        child: child,
      ),
    ),
    context: context,
  );
}
