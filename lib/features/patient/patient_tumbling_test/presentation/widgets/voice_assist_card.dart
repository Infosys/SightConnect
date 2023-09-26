import 'package:avatar_glow/avatar_glow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:speech_to_text/speech_to_text.dart';

class VoiceAssistCard extends HookWidget {
  VoiceAssistCard({Key? key}) : super(key: key);

  final SpeechToText speechToText = SpeechToText();

  @override
  Widget build(BuildContext context) {
    final isListening = useState<bool>(false);

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
                    endRadius: 75,
                    animate: isListening.value,
                    duration: const Duration(milliseconds: 2000),
                    glowColor: AppColor.primary,
                    repeat: true,
                    repeatPauseDuration: const Duration(milliseconds: 100),
                    child: GestureDetector(
                      onTapDown: ((details) async {
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
                                } else {
                                  text.value = "Invalid response";
                                }
                              },
                            );
                          }
                        }
                      }),
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
}
