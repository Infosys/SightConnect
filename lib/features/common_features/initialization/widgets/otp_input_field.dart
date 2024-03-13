import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPInputField extends StatelessWidget {
  const OTPInputField({
    super.key,
    this.pinController,
    this.otpFocusNode,
    this.onCompleted,
    this.onChanged,
  });

  final TextEditingController? pinController;
  final FocusNode? otpFocusNode;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 52,
      height: 52,
      textStyle: applyRobotoFont(
        fontSize: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: AppColor.primary,
          width: 0.7,
        ),
      ),
    );
    return Pinput(
      controller: pinController,
      length: 6,
      focusNode: otpFocusNode,
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      separatorBuilder: (index) => const SizedBox(width: 8),
      enabled: true,
      showCursor: true,
      defaultPinTheme: defaultPinTheme,
      keyboardType: const TextInputType.numberWithOptions(),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onCompleted: onCompleted,
      onChanged: onChanged,
      closeKeyboardWhenCompleted: true,
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
          ),
        ],
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Colors.redAccent),
      ),
    );
  }
}
