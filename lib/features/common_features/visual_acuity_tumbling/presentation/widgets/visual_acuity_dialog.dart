import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/core/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/features/common_features/distance_visual_acuity_tumbling/presentation/pages/distance_visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_result_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../triage/presentation/providers/triage_stepper_provider.dart';
import 'visual_acuity_tumbling_overlay.dart';

class VisualAcuityDialog {
  VisualAcuityDialog._();

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
              centerTitle: true,
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
                      height: AppSize.km + 2,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: applyLightShadow(),
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

class VisualAcuitySuccessDialog extends HookConsumerWidget {
  const VisualAcuitySuccessDialog({super.key});
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
                          final isAcuityDialog = ref.read(
                              visualAcuityTumblingTestDialogProvider.notifier);
                          final stepper = ref.read(triageStepperProvider);

                          return TextButton(
                            onPressed: () async {
                              var navigator = Navigator.of(context);
                              try {
                                isLoading.value = true;
                                isAcuityDialog.state = true;
                                
                                ref
                                    .read(globalVisualAcuityProvider)
                                    .setShortDistanceTest(false);

                                if (global.isTriageMode()) {
                                  stepper.goToNextStep();
                                  logger.d("Triage Mode");
                                  await _saveTriageMode(ref, navigator);
                                   
                                } else if (global.isStandaloneMode()) {
                                  logger.d("Standalone Mode");
                                  _saveStandAloneMode(navigator);
                                } else {
                                  logger.d("Update Mode");
                                   stepper.goToNextStep();
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
    await ref.read(tumblingTestProvider).saveVisionAcuityResponseToDB();
    //   navigator.push(MaterialPageRoute(builder: (context) {
    //     return const DistanceVisualAcuityTumblingPage();
    //   }));
    navigator
      ..pop()
      ..pop()
      ..pop()
      ..pop();
  }

  void _saveStandAloneMode(NavigatorState navigator) {
    navigator.pushReplacement(
      MaterialPageRoute(
        builder: (context) => const TumblingResultReportPage(),
      ),
    );
  }

  Future<void> _saveUpdateMode(WidgetRef ref, NavigatorState navigator) async {
    // final result = await ref
    //     .read(tumblingTestProvider)
    //     .updateVisualAcuityTumblingResponse();

    // result.fold(
    //   (failure) {
    //     Fluttertoast.showToast(
    //         msg: "Failed to update observation at this moment");
    //   },
    //   (result) {
    //     Fluttertoast.showToast(msg: "Observation Updated");
    //   },
    // );
    await ref.read(tumblingTestProvider).saveVisionAcuityResponseToDB();

    navigator.push(
      MaterialPageRoute(
        builder: (context) => const DistanceVisualAcuityTumblingPage(),
      ),
    );
  }
}
