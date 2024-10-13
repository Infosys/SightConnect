/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: AppSize.width(context) * 0.8,
                height: AppSize.height(context) * 0.4,
                child: Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          OutlinedButton(
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
                      size: AppSize.kl,
                      color:
                          currentStep == 0 ? AppColor.grey : AppColor.primary,
                    ),
                    const SizedBox(width: AppSize.ks / 2),
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
              const SizedBox(width: AppSize.kl),
              //submit
              Expanded(
                child: ElevatedButton(
                  onPressed: currentStep != 2
                      ? null
                      : () {
                          XFile left = ref
                              .read(vtCloseAssessmentHelperProvider)
                              .leftEyeImage;
                          XFile right = ref
                              .read(vtCloseAssessmentHelperProvider)
                              .rightEyeImage;

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
              const SizedBox(width: AppSize.kl),
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
                    const SizedBox(width: AppSize.ks / 2),
                    Icon(
                      Icons.arrow_forward,
                      size: AppSize.kl,
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
