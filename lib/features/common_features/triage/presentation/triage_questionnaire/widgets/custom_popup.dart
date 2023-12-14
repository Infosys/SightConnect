import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomPopUp extends ConsumerWidget {
  final VoidCallback? onPageChanged;
  final int? questionCode;
  const CustomPopUp({
    super.key,
    this.onPageChanged,
    this.questionCode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: AppSize.height(context) * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.kmradius),
            ),
            elevation: AppSize.kselevation,
            color: Colors.white,
            child: SizedBox(
              height: 152,
              width: AppSize.width(context) * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(AppSize.kmpadding),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Assessment",
                        style: applyFiraSansFont(fontSize: 24),
                      ),
                      SvgPicture.asset(
                        AppIcon.question,
                        height: 32,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  Text(
                    "Are you having any eyesight related problem?",
                    style: applyRobotoFont(fontSize: 14),
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          onPageChanged!();
                        },
                        child: Text(
                          "Yes",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.primary),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "No",
                          style: applyRobotoFont(
                              fontSize: 14, color: AppColor.primary),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
    
        ],
      ),
    );
  }
}
