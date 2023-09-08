import 'package:dotted_border/dotted_border.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VoiceAssistCard extends StatelessWidget {
  const VoiceAssistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.kmpadding,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(AppSize.klradius),
        padding: const EdgeInsets.all(AppSize.kspadding),
        color: AppColor.kGrey,
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
                        color: AppColor.kPrimary,
                        width: 1.5,
                      ),
                    ),
                    child: const Icon(
                      Icons.mic,
                      size: 50,
                    )),
                const SizedBox(height: AppSize.klheight),
                Text(
                  "Press and hold the mic icon and speak loud",
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.kGrey,
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
