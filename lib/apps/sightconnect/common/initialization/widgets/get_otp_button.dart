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
