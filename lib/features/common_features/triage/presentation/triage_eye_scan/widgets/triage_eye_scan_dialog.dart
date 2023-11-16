import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/triage_eye_scan_provider.dart';

class TriageEyeScanDialog {
  TriageEyeScanDialog._();

  static BlurDialogBox showCameraNotFound(BuildContext context) {
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      title: Image.asset(
        AppImages.checkMark,
        height: 40,
        width: 40,
        color: AppColor.green,
      ),
      content: SizedBox(
        width: AppSize.width(context) * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Camera not found! Please check your camera and try again.",
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ok"),
                )
              ],
            ),
          ],
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withOpacity(0.04),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, -3),
              ),
            ],
            color: AppColor.white,
          ),
          padding: const EdgeInsets.all(12.0),
          child: const BrandingWidgetH(),
        ),
      ],
    );
  }

  static BlurDialogBox showSuccessDialog(BuildContext context, TriageEye eye) {
    if (eye == TriageEye.RIGHT_EYE) {
      return BlurDialogBox(
        insetPadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        title: Image.asset(
          AppImages.checkMark,
          height: 40,
          width: 40,
          color: AppColor.green,
        ),
        content: SizedBox(
          width: AppSize.width(context) * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Done! Right Eye image is captured. Now, let's test capture your Left Eye.",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Ok"),
                  )
                ],
              ),
            ],
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withOpacity(0.04),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, -3),
                ),
              ],
              color: AppColor.white,
            ),
            padding: const EdgeInsets.all(12.0),
            child: const BrandingWidgetH(),
          ),
        ],
      );
    } else {
      return BlurDialogBox(
        insetPadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        title: Image.asset(
          AppImages.checkMark,
          height: 40,
          width: 40,
          color: AppColor.green,
        ),
        content: SizedBox(
          width: AppSize.width(context) * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Done! Left Eye image is captured.",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                      return TextButton(
                        onPressed: () {
                          ref.read(triageStepperProvider).goToNextStep();
                          ref
                              .read(triageEyeScanProvider)
                              .setCurrentEye(TriageEye.RIGHT_EYE);

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const TriageResultPage(),
                            ),
                          );
                          // try {
                          //   ref.read(triageProvider).saveTriage().then(
                          //     (value) {

                          //     },
                          //   );
                          // } catch (e) {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //       content: Text("Server error!"),
                          //     ),
                          //   );
                          // }
                        },
                        child: const Text("Proceed"),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.black.withOpacity(0.04),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, -3),
                ),
              ],
              color: AppColor.white,
            ),
            padding: const EdgeInsets.all(12.0),
            child: const BrandingWidgetH(),
          ),
        ],
      );
    }
  }
}
