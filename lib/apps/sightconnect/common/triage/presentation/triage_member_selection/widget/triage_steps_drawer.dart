/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:easy_stepper/easy_stepper.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageStepsDrawer extends ConsumerWidget {
  const TriageStepsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(triageStepperProvider);
    final role = PersistentAuthStateService.authState.activeRole;
    final loc = context.loc!;
    return Drawer(
      width: AppSize.width(context),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.scaffoldBg),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.kl),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
                Text(loc.eyeAssessmentSteps,
                    style: applyFiraSansFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // alignment: Alignment.topLeft,
                // fit: StackFit.loose,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: AppSize.kl + 2),
                    child: EasyStepper(
                        disableScroll: true,
                        fitWidth: true,
                        borderThickness: 3,
                        lineStyle: const LineStyle(
                            lineType: LineType.normal,
                            lineThickness: 5,
                            unreachedLineColor: AppColor.altGrey,
                            activeLineColor: AppColor.altGrey,
                            finishedLineColor: AppColor.green,
                            lineLength: 50),
                        stepShape: StepShape.rRectangle,
                        stepBorderRadius: 100,
                        defaultStepBorderType: BorderType.normal,
                        enableStepTapping: false,
                        direction: Axis.vertical,
                        unreachedStepBorderType: BorderType.normal,
                        unreachedStepIconColor: AppColor.grey,
                        unreachedStepBorderColor: AppColor.altGrey,
                        unreachedStepBackgroundColor: AppColor.white,
                        activeStepIconColor: AppColor.white,
                        activeStepBackgroundColor: AppColor.blue,
                        finishedStepBackgroundColor: AppColor.green,
                        finishedStepIconColor: AppColor.white,
                        activeStep: model.currentStep,
                        activeStepTextColor: Colors.black87,
                        finishedStepTextColor: Colors.black87,
                        internalPadding: 0,
                        showLoadingAnimation: false,
                        padding: const EdgeInsets.all(0),
                        stepRadius: 14,
                        showStepBorder: true,
                        steps: [
                          const EasyStep(
                            icon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            activeIcon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            finishIcon: Icon(
                              Icons.check,
                              size: 25,
                              weight: 10,
                            ),
                          ),
                          const EasyStep(
                            icon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            activeIcon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            finishIcon: Icon(
                              Icons.check,
                              size: 25,
                              weight: 10,
                            ),
                          ),
                          const EasyStep(
                            icon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            activeIcon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            finishIcon: Icon(
                              Icons.check,
                              size: 25,
                              weight: 10,
                            ),
                          ),
                          if (role == "ROLE_OPTOMETRIST" ||
                              role == "ROLE_PATIENT")
                            const EasyStep(
                              icon: Icon(
                                Icons.more_horiz,
                                size: 25,
                                weight: 10,
                              ),
                              activeIcon: Icon(
                                Icons.more_horiz,
                                size: 25,
                                weight: 10,
                              ),
                              finishIcon: Icon(
                                Icons.check,
                                size: 25,
                                weight: 10,
                              ),
                            ),
                          const EasyStep(
                            icon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            activeIcon: Icon(
                              Icons.more_horiz,
                              size: 25,
                              weight: 10,
                            ),
                            finishIcon: Icon(
                              Icons.check,
                              size: 25,
                              weight: 10,
                            ),
                          ),
                        ],
                        onStepReached: (index) => model.goToNextStep()),
                  ),
                  SizedBox(
                    width: AppSize.width(context) * 0.65,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            loc.eyeAssessmentStepOne,
                            softWrap: true,
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            model.currentStep == 0
                                ? loc.eyeAssessmentOngoing
                                : model.currentStep > 0
                                    ? loc.eyeAssessmentCompleted
                                    : loc.eyeAssessmentPending,
                            softWrap: true,
                            style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.altGrey,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: AppSize.kl * 3.5,
                          ),
                          Text(
                            loc.eyeAssessmentStepTwo,
                            softWrap: true,
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            model.currentStep == 1
                                ? loc.eyeAssessmentOngoing
                                : model.currentStep > 1
                                    ? loc.eyeAssessmentCompleted
                                    : loc.eyeAssessmentPending,
                            softWrap: true,
                            style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.altGrey,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: AppSize.kl * 3.5,
                          ),
                          if (role == "ROLE_OPTOMETRIST" ||
                              role == "ROLE_PATIENT")
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Step -3 Visual Acuity Test (Long Distance)",
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  model.currentStep == 2
                                      ? loc.eyeAssessmentOngoing
                                      : model.currentStep > 2
                                          ? loc.eyeAssessmentCompleted
                                          : loc.eyeAssessmentPending,
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      color: AppColor.altGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: AppSize.kl * 3.4,
                                ),
                                Text(
                                  'Step 4 - Eye Scan',
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  model.currentStep == 3
                                      ? loc.eyeAssessmentOngoing
                                      : model.currentStep > 3
                                          ? loc.eyeAssessmentCompleted
                                          : loc.eyeAssessmentPending,
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      color: AppColor.altGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          else
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  loc.eyeAssessmentStepThree,
                                  style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  model.currentStep == 2
                                      ? loc.eyeAssessmentOngoing
                                      : model.currentStep > 2
                                          ? loc.eyeAssessmentCompleted
                                          : loc.eyeAssessmentPending,
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      color: AppColor.altGrey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          const SizedBox(
                            height: AppSize.kl * 3.4,
                          ),
                          Text(
                            loc.eyeAssessmentResults,
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            loc.eyeAssessmentCompleteSteps,
                            style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.altGrey,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ),
                ]),
            const Spacer(),
            Row(
              children: [
                const SizedBox(
                  width: AppSize.km,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: AppColor.black,
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => TriageExitAlertBox(
                        content: loc.questionnaireExitDialog,
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(context) * 0.15,
                    ),
                    child: Text(
                      loc.exitButton,
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.ks,
            ),
          ],
        ),
      ),
    );
  }
}
