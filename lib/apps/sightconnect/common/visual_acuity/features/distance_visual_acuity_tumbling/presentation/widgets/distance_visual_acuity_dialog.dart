/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_provider.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../shared/theme/app_shadow.dart';
import '../../../../../triage/presentation/providers/triage_stepper_provider.dart';
import '../../../../domain/enums/tumbling_enums.dart';
import '../pages/distance_visual_acuity_result_page.dart';
import '../providers/distance_visual_acuity_test_provider.dart';

class DistanceVisualAcuityDialog {
  DistanceVisualAcuityDialog._();

  static SizedBox showEyeInstructionDialog(BuildContext context, Eye eye) {
    final screenHeight = AppSize.height(context);
    final imageHeight = screenHeight * (264 / 892);
    return SizedBox(
      width: AppSize.width(context) * 1,
      height: AppSize.height(context) * 1,
      child: Dialog(
        insetPadding: EdgeInsets.zero,
        child: SizedBox(
          width: AppSize.width(context) * 1,
          height: AppSize.height(context) * 1,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                splashRadius: 20,
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              centerTitle: true,
              title: Text(AppLocalizations.of(context)!.visualAcuityTitle),
            ),
            body: SizedBox(
              width: AppSize.width(context) * 1,
              height: AppSize.height(context) * 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kl, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _mapEyeTitle(context, eye),
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Text(
                      _mapEyeInstruction(context, eye),
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: AppSize.km,
                    ),
                    Text(
                      "This part of the test requires an assistant as it must be taken from a 2-meter distance. Call a friend, family member, or neighbor to help you with this test.",
                      softWrap: true,
                      style: applyRobotoFont(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: applyLightShadow(),
                        ),

                        child: Center(
                          child: SvgPicture.asset(
                            "assets/images/distance_va_instruction.svg",
                            height: imageHeight,
                          ),
                        ),

                        // Image.asset(
                        //   "assets/images/visualAcuityRightEye.png",
                        // ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        width: AppSize.width(context) * 0.8,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: AppColor.blue),
                          color: AppColor.white,
                          boxShadow: applyLightShadow(),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              "Please maintain a 2-meter distance from the screen",
                              textAlign: TextAlign.center,
                              style: applyRobotoFont()),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child:
                                Text(AppLocalizations.of(context)!.startButton),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static String _mapEyeInstruction(BuildContext context, Eye currentEye) {
    switch (currentEye) {
      case Eye.left:
        return context.loc!.visualAcuityLeftEyeInstructions;
      case Eye.right:
        return context.loc!.visualAcuityRightEyeInstructions;
      case Eye.both:
        return context.loc!.visualAcuityBothEyeInstructions;
      default:
        return "";
    }
  }

  static String _mapEyeTitle(BuildContext context, Eye currentEye) {
    switch (currentEye) {
      case Eye.left:
        return context.loc!.visualAcuityLeftEyeHeader;
      case Eye.right:
        return context.loc!.visualAcuityRightEyeHeader;
      case Eye.both:
        return context.loc!.visualAcuityBothEyeHeader;
      default:
        return "";
    }
  }

  static String _mapEyeInstructionImage(BuildContext context, Eye currentEye) {
    switch (currentEye) {
      case Eye.left:
        return "assets/images/visualAcuityLeftEye.png";
      case Eye.right:
        return "assets/images/visualAcuityRightEye.png";
      case Eye.both:
        return "assets/images/visualAcuityBothEyes.png";
      default:
        return "";
    }
  }
}

class DistanceVisualAcuitySuccessDialog extends HookConsumerWidget {
  const DistanceVisualAcuitySuccessDialog({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final global = ref.read(globalProvider);
    var isLoading = useState<bool>(false);
    return BlurDialogBox(
      insetPadding: EdgeInsets.zero,
      actionsPadding: EdgeInsets.zero,
      content: isLoading.value
          ? const LoadingCard()
          : SizedBox(
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
                    height: AppSize.km,
                  ),
                  Text(
                    global.isTriageMode() || global.isStandaloneMode()
                        ? AppLocalizations.of(context)!
                            .visualAcuityCompletionDialog
                        : "Your data has been saved successfully",
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Consumer(
                        builder: (
                          BuildContext context,
                          WidgetRef ref,
                          Widget? child,
                        ) {
                          // final isAcuityDialog = ref.read(
                          //     distancevisualAcuityTumblingTestDialogProvider
                          //         .notifier);
                          final stepper = ref.read(triageStepperProvider);

                          return TextButton(
                            onPressed: () async {
                              var navigator = Navigator.of(context);
                              try {
                                isLoading.value = true;
                                // isAcuityDialog.state = true;

                                // ref
                                //     .read(globalVisualAcuityProvider)
                                //     .setShortDistanceTest(true);
                                if (global.isTriageMode()) {
                                  logger.d("Triage Mode");
                                  stepper.goToNextStep();
                                  await _saveTriageMode(ref, navigator);
                                } else if (global.isStandaloneMode()) {
                                  logger.d("Standalone Mode");
                                  _saveStandAloneMode(navigator);
                                } else {
                                  logger.d("Update Mode");
                                  await _saveUpdateMode(ref, navigator);
                                }
                                isLoading.value = false;
                              } catch (e) {
                                logger.d({"VisualAcuitySuccessDialog": e});
                                isLoading.value = false;
                                Fluttertoast.showToast(
                                    msg: "Failed to save observation");
                              }
                            },
                            child: Text(
                              AppLocalizations.of(context)!.proceedButton,
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
      actions: const [],
    );
  }

  Future<void> _saveTriageMode(WidgetRef ref, NavigatorState navigator) async {
    // await ref
    //     .read(distanceTumblingTestProvider)
    //     .getVisionAcuityTumblingResponse();
    await ref.read(distanceTumblingTestProvider).saveVisionAcuityResponseToDB();
    navigator
      ..pop()
      // ..pop()
      ..pop();
  }

  void _saveStandAloneMode(NavigatorState navigator) {
    navigator.pushReplacement(
      MaterialPageRoute(
        builder: (context) => const DistanceTumblingResultReportPage(),
      ),
    );
  }

  Future<void> _saveUpdateMode(WidgetRef ref, NavigatorState navigator) async {
    final result = await ref
        .read(distanceTumblingTestProvider)
        .updateVisualAcuityTumblingResponse();

    result.fold(
      (failure) {
        Fluttertoast.showToast(
            msg: "Failed to update observation at this moment");

        navigator
          ..pop()
          ..pop()
          ..pop()
          ..pop()
          // ..pop()
          ..pop()
          ..pop()
          ..pop()
          ..pop();
      },
      (result) {
        Fluttertoast.showToast(msg: "Observation Updated");

        navigator
          ..pop()
          ..pop()
          ..pop()
          ..pop()
          // ..pop()
          ..pop()
          ..pop()
          ..pop()
          ..pop();
      },
    );

    // navigator
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop()
    //   ..pop();
  }
}
