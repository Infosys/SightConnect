/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({
    super.key,
    this.onPressed,
    required this.title,
  });
  final VoidCallback? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: AppSize.height(context) * 0.13,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kl - 5,
          vertical: 0,
        ),
        decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColor.blue,
            ),
          ),
        ),
        child: AutoSizeText(
          title,
          maxLines: 3,
          textAlign: TextAlign.center,
          style: applyRobotoFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColor.primary,
          ),
        ),
      ),
    );
  }
}
