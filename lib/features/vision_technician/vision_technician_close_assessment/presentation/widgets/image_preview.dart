import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImagePreview extends ConsumerWidget {
  const ImagePreview({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String imagePath = ref.watch(vtCloseAssessmentHelperProvider).imagePath;
    int currentStep = ref.watch(vtCloseAssessmentHelperProvider).currentStep;
    String currentEye = ref
        .watch(vtCloseAssessmentHelperProvider)
        .currentEye
        .toString()
        .split('.')
        .last
        .sentenceCase();
    final loc = context.loc!;
    return Container(
      width: 536,
      height: 714,
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyMediumShadow(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                "$currentEye Eye",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 472,
            height: 300,
            child: Image.file(
              File(imagePath),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: AppSize.klpadding,
                  vertical: AppSize.kmpadding,
                ),
              ),
              side: MaterialStateProperty.all(
                const BorderSide(
                  width: 1,
                  color: AppColor.primary,
                ),
              ),
            ),
            onPressed: () {
              ref.watch(vtCloseAssessmentHelperProvider).retakePicture();
            },
            child: Text(
              loc.vtRetakePicture,
              style: applyRobotoFont(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColor.primary,
              ),
            ),
          ),
          Row(
            children: [
              //Back
              TextButton(
                onPressed: currentStep == 0
                    ? null
                    : () {
                        ref
                            .read(vtCloseAssessmentHelperProvider)
                            .goToPreviousStep();
                      },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: AppSize.klheight,
                      color:
                          currentStep == 0 ? AppColor.grey : AppColor.primary,
                    ),
                    const SizedBox(width: AppSize.kswidth / 2),
                    Text(
                      loc.vtBack,
                      style: applyRobotoFont(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color:
                            currentStep == 0 ? AppColor.grey : AppColor.primary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              //submit
              Expanded(
                child: TextButton(
                  onPressed: () {
                    XFile left =
                        ref.read(vtCloseAssessmentHelperProvider).leftEyeImage;
                    XFile right =
                        ref.read(vtCloseAssessmentHelperProvider).rightEyeImage;

                    ref
                        .read(visionTechnicianTriageProvider)
                        .setEyeImage(left, right);

                    currentStep != 2
                        ? null
                        : ref
                            .read(vtCloseAssessmentHelperProvider)
                            .markAllImagesCaptured();
                    ref
                        .read(preliminaryAssessmentHelperProvider)
                        .setImagesSubmitted();
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: currentStep != 2
                        ? MaterialStateProperty.all<Color>(AppColor.lightGrey)
                        : MaterialStateProperty.all<Color>(AppColor.primary),
                  ),
                  child: Text(
                    loc.vtSubmit,
                    style: applyRobotoFont(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: currentStep != 2 ? AppColor.grey : AppColor.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              //Next
              TextButton(
                onPressed: () {
                  currentStep == 2
                      ? null
                      : ref
                          .read(vtCloseAssessmentHelperProvider)
                          .goToNextStep();
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      loc.vtNext,
                      style: applyRobotoFont(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color:
                            currentStep == 2 ? AppColor.grey : AppColor.primary,
                      ),
                    ),
                    const SizedBox(width: AppSize.kswidth / 2),
                    Icon(
                      Icons.arrow_forward,
                      size: AppSize.klheight,
                      color:
                          currentStep == 2 ? AppColor.grey : AppColor.primary,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
