import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_result_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../triage/presentation/providers/triage_stepper_provider.dart';
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
              AppLocalizations.of(context)!.visualAcuityCompletionDialog,
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
                      onPressed: () async {
                        var navigator = Navigator.of(context);
                        ref
                            .read(
                                visualAcuityTumblingTestDialogProvider.notifier)
                            .state = true;
                        ref.read(triageStepperProvider).goToNextStep();
                        if (ref.read(globalProvider).isTriageMode()) {
                          logger.d("Triage Mode");
                          await ref
                              .read(tumblingTestProvider)
                              .saveVisionAcuityResponseToDB();
                          navigator.pop();
                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) => const TriageEyeScanPage(),
                              fullscreenDialog: true,
                            ),
                          );
                        } else if (ref
                            .read(globalProvider)
                            .isStandaloneMode()) {
                          logger.d("Standalone Mode");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TumblingResultReportPage(),
                            ),
                          );
                        } else {
                          logger.d("Update Mode");
                          ref
                              .watch(tumblingTestProvider)
                              .updateVisualAcuityTumblingResponse();
                          navigator.pop();
                          navigator.pop();
                          navigator.pop();
                          navigator.pop();
                        }
                      },
                      child: Text(AppLocalizations.of(context)!.proceedButton),
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

  static SizedBox showEyeInstructionDialog(BuildContext context, Eye eye) {
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
              title: Text(AppLocalizations.of(context)!.visualAcuityTitle),
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
                      _mapEyeTitle(context, eye),
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
                      _mapEyeInstruction(context, eye),
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
                        child: _mapEyeInstructionImage(context, eye).isEmpty
                            ? const SizedBox()
                            : Image.asset(
                                _mapEyeInstructionImage(context, eye),
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
        return context.loc!.leftEyeString;
      case Eye.right:
        return context.loc!.rightEyeString;
      case Eye.both:
        // return context.loc!.bothEyeString;
        return "Both Eyes";
      default:
        return "";
    }
  }

  static String _mapEyeInstructionImage(BuildContext context, Eye currentEye) {
    switch (currentEye) {
      case Eye.left:
        return "assets/images/Test1LeftEye.png";
      case Eye.right:
        return "assets/images/Test1RightEye.png";
      case Eye.both:
        return "assets/images/Test1BothEye.png";
      default:
        return "";
    }
  }
}
