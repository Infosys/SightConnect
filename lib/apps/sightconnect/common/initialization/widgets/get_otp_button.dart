/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GetOTPButton extends StatelessWidget {
  const GetOTPButton({
    super.key,
    this.onPressed,
    this.isButtonEnabled = false,
  });

  final Function()? onPressed;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(AppSize.width(context) * 0.9, 40),
      ),
      onPressed: isButtonEnabled ? onPressed : null,
      child: Text(
        loc.loginGetOTP,
        style: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.white,
        ),
      ),
    );
  }
}
