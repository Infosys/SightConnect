import 'dart:async';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/matomo_logger.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';
import 'package:uuid/uuid.dart';

class LoginPage extends HookConsumerWidget {
  static const routeName = '/login';
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var mobileController = useTextEditingController();
    var focusNode = useFocusNode();
    final otpFocusNode = useFocusNode();
    var formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    var showOtp = useState<bool>(false);

    var otp = useState<String>('');
    var isLoading = useState<bool>(false);
    var otpExpiry = useState<int>(0);
    var otpError = useState<String>("");
    var pinController = useTextEditingController();

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

    useEffect(() {
      if (otpExpiry.value != 0) {
        final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (otpExpiry.value == 0) {
            timer.cancel();
          } else {
            otpExpiry.value--;
          }
        });
        return timer.cancel;
      }
      return null;
    }, [otpExpiry.value]);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    AppImages.logo,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                AppText.appName,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          actions: [
            Visibility(
              visible: showOtp.value,
              child: IconButton(
                onPressed: () {
                  showOtp.value = false;
                  mobileController.clear();
                  pinController.clear();
                  otp.value = '';
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          crossFadeState: showOtp.value
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          firstChild: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey.value,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "Verify your mobile number",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: TextFormField(
                    focusNode: focusNode,
                    controller: mobileController,
                    onChanged: (value) {
                      if (value.length == 10) {
                        focusNode.unfocus();
                      }
                    },
                    onSaved: (value) {
                      mobileController.text = value!;
                    },
                    validator: (value) {
                      const pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                      final regExp = RegExp(pattern);
                      if (value!.isEmpty) {
                        return 'Please enter mobile number';
                      } else if (!regExp.hasMatch(value)) {
                        return 'Please enter valid mobile number';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      border: UnderlineInputBorder(),
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(
                        fontSize: 14,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.blue, width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColor.blue, width: 2.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 4),
                isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(AppSize.width(context) * 0.9, 40),
                        ),
                        onPressed: () async {
                          final scaffold = ScaffoldMessenger.of(context);

                          if (formKey.value.currentState!.validate()) {
                            try {
                              isLoading.value = true;
                              otpExpiry.value = await ref
                                  .read(initializationProvider)
                                  .sendOtp(mobile: mobileController.text);

                              isLoading.value = false;
                              showOtp.value = true;
                            } catch (e) {
                              scaffold.showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Unable to send OTP to this number',
                                  ),
                                ),
                              );
                            }
                          }
                        },
                        child: Text(
                          'Get OTP',
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                      ),
              ],
            ),
          ),
          secondChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: AppSize.ksheight),
              Text(
                "Verify your mobile number",
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Text(
                "Please enter the OTP sent to ${_formatMobile(mobileController.text)}",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              Pinput(
                controller: pinController,
                length: 6,
                focusNode: otpFocusNode,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                separatorBuilder: (index) => const SizedBox(width: 8),
                enabled: true,
                showCursor: true,
                defaultPinTheme: defaultPinTheme,
                keyboardType: const TextInputType.numberWithOptions(),
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  logger.d(pin);
                },
                onChanged: (value) {
                  otp.value = value;
                },
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
              ),
              const SizedBox(height: AppSize.klheight),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive the code?",
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                  const SizedBox(width: 6),
                  otpExpiry.value != 0
                      ? OTPTimer(expireInsec: otpExpiry.value)
                      : InkWell(
                          onTap: () async {
                            try {
                              otpExpiry.value = await ref
                                  .read(initializationProvider)
                                  .sendOtp(mobile: mobileController.text);

                              Fluttertoast.showToast(
                                  msg: "OTP sent successfully");
                            } catch (e) {
                              Fluttertoast.showToast(
                                  msg: "Unable to send OTP to this number");
                            }
                          },
                          child: Text(
                            "Resend",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                ],
              ),
              const SizedBox(height: AppSize.klheight),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    otpError.value,
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.klheight),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(AppSize.width(context) * 0.9, 40),
                ),
                onPressed: () async {
                  final navigator = Navigator.of(context);

                  if (otp.value.isNotEmpty) {
                    try {
                      otpError.value = '';

                      await ref.read(initializationProvider).signIn(
                          mobile: mobileController.text, otp: otp.value);

                      // Set visitor user id for matomo analytics
                      var uuid = const Uuid();
                      String userId = uuid.v1();
                      MatomoLogger.setVisitorUserId(userId);
                      /////////////////////////////////

                      navigator.pushNamedAndRemoveUntil(
                          InitializationPage.routeName, (route) => false);
                    } catch (e) {
                      logger.e(e);
                      Fluttertoast.showToast(msg: "Invalid OTP");

                      otpError.value = "Invalid OTP";
                      pinController.clear();
                      Future.delayed(const Duration(seconds: 2), () {
                        otpError.value = "";
                      });
                    }
                  }
                },
                child: Text(
                  'Verify and Proceed',
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _formatMobile(String mobile) {
    final maskedMobile = mobile.replaceAllMapped(
        RegExp(r'(\d{2})(\d{4})(\d{4})'),
        (match) => '${match[1]}******${match[3]}');
    return maskedMobile;
  }
}

class OTPTimer extends StatelessWidget {
  const OTPTimer({super.key, required this.expireInsec});
  final int expireInsec;

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatOtpExpiry(expireInsec),
      style: applyRobotoFont(
        fontSize: 12,
        color: AppColor.primary,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      ),
    );
  }

  _formatOtpExpiry(int expiry) {
    int time = expiry;
    int minutes = time ~/ 60;
    int seconds = time % 60;
    return 'Resend in ${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
