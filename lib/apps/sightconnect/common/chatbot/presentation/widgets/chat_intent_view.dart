import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ChatIntentView extends StatelessWidget {
  const ChatIntentView({super.key, required this.intent});
  final ChatIntent? intent;

  @override
  Widget build(BuildContext context) {
    if (intent == null) {
      return Container();
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            intent!.question,
            style: applyRobotoFont(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              // color: AppColor.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(const EdgeInsets.all(8)),
                ),
                onPressed: () {
                  intent!.noHandler();
                },
                child: Text(
                  intent!.noText,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColor.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(const EdgeInsets.all(8)),
                ),
                onPressed: () {
                  intent!.yesHandler();
                },
                child: Text(
                  intent!.yesText,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ChatIntent {
  const ChatIntent({
    required this.question,
    required this.yesHandler,
    required this.noHandler,
    this.yesText = "Yes",
    this.noText = "No",
  });
  final String question;
  final void Function() yesHandler;
  final void Function() noHandler;
  final String yesText;
  final String noText;
}
