import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/data/local/fake_data_source_cataract.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eye_report_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/patient_eyes_capture_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/extensions/string_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void cameraCaptureAlert(BuildContext context, Eye eye) {
  showGeneralDialog(
    barrierDismissible: false,
    barrierLabel: '',
    barrierColor: AppColor.kBlackOpacity, //black38
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      title: Image.asset(
        AppImages.checkMark,
        height: 40,
        width: 40,
        color: AppColor.kGreen,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${eye.toString().split('_')[0].split('.')[1].toLowerCase().capitalize()} Eye Scan complete",
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
            child: Text(
              'Rescan',
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.kPrimary,
              ),
            ),
            onPressed: () {
              ref.read(patientEyeScanProvider).resetImages(eye);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PatientEyeCapturePage(),
                ),
              );
            },
          ),
        ),
        Consumer(
          builder: (context, ref, child) => TextButton(
            onPressed: eye == Eye.RIGHT_EYE
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PatientEyeCapturePage(),
                      ),
                    );
                  }
                : () {
                    ref.read(patientEyeScanProvider).setCurrentEye(Eye.RIGHT_EYE);
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) =>
                                const PatientEyesReportPage()),
                        (route) => route.isFirst);
                  },
            child: Text(
              'Ok',
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.kPrimary,
              ),
            ),
          ),
        ),
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
