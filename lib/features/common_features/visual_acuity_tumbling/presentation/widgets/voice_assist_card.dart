import 'package:avatar_glow/avatar_glow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/tumbling_models.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VoiceAssistCard extends HookConsumerWidget {
  const VoiceAssistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SpeechToText speechToText = SpeechToText();
    final isListening = useState<bool>(false);
    var model = ref.watch(tumblingTestProvider);

    ref.listen(tumblingTestProvider, (previous, next) {
      if (next.currentEye == Eye.left && next.isGameOver!) {
        logger.d("Game Over for left eye");
        _showTestCompleteDialog(context);
        next.startGame(Eye.right);
      } else if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for both eyes");

        _showSuccessTemp(context, ref);
      }
    });

    final text = useState<String>("Press and hold the mic icon and speak loud");

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.kmpadding,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(AppSize.klradius),
        padding: const EdgeInsets.all(AppSize.kspadding),
        color: AppColor.grey,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: AppColor.primary,
                      width: 1.5,
                    ),
                  ),
                  child: AvatarGlow(
                    endRadius: 30,
                    animate: isListening.value,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: AppColor.primary,
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    child: GestureDetector(
                      onTapDown: (details) async {
                        if (!isListening.value) {
                          var available = await speechToText.initialize();

                          if (available) {
                            isListening.value = true;

                            speechToText.listen(
                              onResult: (result) {
                                if (result.recognizedWords == "up" ||
                                    result.recognizedWords == "down" ||
                                    result.recognizedWords == "left" ||
                                    result.recognizedWords == "right") {
                                  text.value = result.recognizedWords;

                                  model.handUserResponse(
                                    UserResponse(
                                      levelNumber: model.currentLevel!,
                                      swipeDirection:
                                          getSwapDirection(text.value),
                                      mode: model.gameMode!,
                                      questionIndex: model.currentIndex!,
                                      isUserResponseCorrect: false,
                                    ),
                                  );
                                } else {
                                  text.value = "Invalid response";
                                }
                              },
                            );
                          }
                        }
                      },
                      onTapUp: ((details) {
                        isListening.value = false;

                        speechToText.stop();
                      }),
                      child: const Icon(
                        Icons.mic,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                Text(
                  text.value,
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSuccessTemp(BuildContext context, WidgetRef ref) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return BlurDialogBox(
          title: Column(
            children: [
              Center(
                child: Image.asset(
                  AppImages.checkMark,
                  height: 40,
                  width: 40,
                  color: AppColor.green,
                ),
              ),
              const SizedBox(height: AppSize.kmpadding),
              Text(
                "Done! Visual acuity test is completed for the right eye.",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          content: Text(
            "You need to capture your eye photos next.",
            style: applyFiraSansFont(
              fontSize: 14,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TriageEyeScanPage(),
                    fullscreenDialog: true,
                  ),
                );
                ref.read(triageStepperProvider).goToNextStep();
              },
              child: const Text("Proceed"),
            )
          ],
        );
      },
    );
  }

  _showTestCompleteDialog(BuildContext context) {
    showDialog(
      useSafeArea: false,
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          width: AppSize.width(context) * 1,
          height: AppSize.height(context) * 1,
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            child: SizedBox(
              width: AppSize.width(context) * 1,
              height: AppSize.height(context) * 1,
              child: Scaffold(
                  appBar: CustomAppbar(
                    title:
                        Text(AppLocalizations.of(context)!.visualAcuityTitle),
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
                            AppLocalizations.of(context)!
                                .visualAcuityRightEyeHeader,
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
                            AppLocalizations.of(context)!
                                .visualAcuityRightEyeInstructions,
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
                                child: Image.asset(
                                    "assets/images/Test1RightEye.png")),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
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
      },
    );
  }
}

getSwapDirection(value) {
  switch (value) {
    case "up":
      return QuestionDirection.up;
    case "down":
      return QuestionDirection.down;
    case "left":
      return QuestionDirection.left;
    case "right":
      return QuestionDirection.right;
  }
}
