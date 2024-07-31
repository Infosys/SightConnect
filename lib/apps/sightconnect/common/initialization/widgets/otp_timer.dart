import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/widgets.dart';

class OTPTimer extends StatelessWidget {
  const OTPTimer({super.key, required this.expireInsec});
  final int expireInsec;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Text(
      loc.loginResendOTPIn(_formatOtpExpiry(expireInsec)),
      style: applyRobotoFont(
        fontSize: 12,
        color: AppColor.primary,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    );
  }

  _formatOtpExpiry(
    int expiry,
  ) {
    int time = expiry;
    int minutes = time ~/ 60;
    int seconds = time % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
