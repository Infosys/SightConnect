/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
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
              borderRadius: BorderRadius.circular(AppSize.km),
            ),
            elevation: AppSize.ks,
            color: Colors.white,
            child: SizedBox(
              height: 152,
              width: AppSize.width(context) * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(AppSize.km),
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
                    height: AppSize.ks,
                  ),
                  Text(
                    "Are you having any eyesight related problem?",
                    style: applyRobotoFont(fontSize: 14),
                  ),
                  const SizedBox(
                    height: AppSize.ks,
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
