import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/pages/patient_triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/presentation/pages/patient_visual_acuity_result_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'visual_acuity_tumbling_overlay.dart';

class VisualAcuityDialog {
  VisualAcuityDialog._();

  static BlurDialogBox showSuccessTemp(BuildContext context) {
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      content: SizedBox(
        width: AppSize.width(context) * 0.8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AppImages.checkMark,
              height: 40,
              width: 40,
              color: AppColor.green,
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Text(
              "Done! Visual acuity test is completed for both eyes. You need to capture your eye photos next.",
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
                        ref
                            .read(
                                visualAcuityTumblingTestDialogProvider.notifier)
                            .state = true;
                        var isSkip = ref.watch(toggleTumblingResultPage);
                        if (!isSkip) {
                          Navigator.of(context).pop();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PatientTriageEyeScanPage(),
                              fullscreenDialog: true,
                            ),
                          );
                          ref.read(patientTriageStepperProvider).nextStep(2);
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TumblingResultReportPage(),
                            ),
                          );
                        }
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

  static SizedBox showTestCompleteDialog(BuildContext context) {
    return SizedBox(
      width: AppSize.width(context) * 1,
      height: AppSize.height(context) * 1,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        child: SizedBox(
          width: AppSize.width(context) * 1,
          height: AppSize.height(context) * 1,
          child: Scaffold(
              appBar: const CustomAppbar(
                title: Text("Visual Acuity Test"),
              ),
              body: SizedBox(
                width: AppSize.width(context) * 1,
                height: AppSize.height(context) * 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Test 2 - Right Eye",
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: AppSize.kmheight,
                      ),
                      Text(
                        "Without pressing on the eyelid, cover the LEFT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(
                        height: AppSize.kmheight + 2,
                      ),
                      Center(
                        child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.primary.withOpacity(0.12),
                                  offset: const Offset(0, 2),
                                  blurRadius: 20,
                                  spreadRadius: 20,
                                ),
                              ],
                            ),
                            height: AppSize.height(context) * 0.5,
                            width: AppSize.width(context) * 0.7,
                            child:
                                Image.asset("assets/images/Test1RightEye.png")),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                visualDensity: VisualDensity(vertical: -1),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Start"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
