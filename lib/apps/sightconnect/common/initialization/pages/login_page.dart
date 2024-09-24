import 'dart:async';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/get_otp_button.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/login_mobile_number_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/otp_input_field.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/widgets/otp_timer.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/matomo_logger.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_upgrader.dart';
import 'package:eye_care_for_all/shared/widgets/translation_pop_up.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class LoginPage extends StatefulHookConsumerWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.invalidate(globalLanguageProvider);
      final currentLocaleCode = ref.read(globalLanguageProvider).currentLocale;
      if (currentLocaleCode == null) {
        showModalBottomSheet(
          isScrollControlled: true,
          enableDrag: false,
          isDismissible: false,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: TranslationPopUp(
              locale: currentLocaleCode,
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    final mobileController = useTextEditingController();
    final pinController = useTextEditingController();
    final mobileFocusNode = useFocusNode();
    final otpFocusNode = useFocusNode();
    final otp = useState<String>('');
    final otpExpiry = useState<int>(0);

    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    final showOtpScreen = useState<bool>(false);
    final isLoading = useState<bool>(false);
    final isOtpButtonEnabled = useState<bool>(false);
    final otpErrorMsg = useState<String>("");

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

    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                Image.asset(
                  "assets/logo/app_logo.png",
                  width: 150,
                ),
              ],
            ),
            actions: [
              Visibility(
                visible: showOtpScreen.value,
                child: IconButton(
                  onPressed: () {
                    showOtpScreen.value = false;
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
        body: AppUpgrader(
          child: Container(
            height: AppSize.height(context),
            width: AppSize.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.scaffoldBg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: AnimatedCrossFade(
                duration: const Duration(milliseconds: 300),
                crossFadeState: showOtpScreen.value
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  key: formKey.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: AppSize.kl * 3.3),
                      Text(
                        loc.loginVerifyMobileNumber,
                        style: applyFiraSansFont(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      LoginMobileNumberField(
                        focusNode: mobileFocusNode,
                        controller: mobileController,
                        onChanged: (value) {
                          if (value.length == 10) {
                            isOtpButtonEnabled.value = true;
                            mobileFocusNode.unfocus();
                          } else {
                            isOtpButtonEnabled.value = false;
                          }
                        },
                        onSaved: (value) {
                          mobileController.text = value!;
                        },
                      ),
                      const SizedBox(height: AppSize.kl * 3),
                      () {
                        if (isLoading.value) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        } else {
                          return GetOTPButton(
                            isButtonEnabled: isOtpButtonEnabled.value,
                            onPressed: () async {
                              if (formKey.value.currentState!.validate()) {
                                try {
                                  isLoading.value = true;
                                  otpExpiry.value = await ref
                                      .read(initializationProvider)
                                      .sendOtp(mobile: mobileController.text);

                                  isLoading.value = false;
                                  showOtpScreen.value = true;
                                } catch (e, s) {
                                  logger.e("Error sending OTP: $e, $s");
                                  isLoading.value = false;
                                  Fluttertoast.showToast(
                                      msg: loc.loginUnableToSendOTP);
                                }
                              }
                            },
                          );
                        }
                      }(),
                    ],
                  ),
                ),
                secondChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: AppSize.kl * 3.5),
                    Text(
                      loc.loginVerifyMobileNumber,
                      style: applyFiraSansFont(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    Text(
                      loc.loginEnterOTP(_formatMobile(mobileController.text)),
                      style: applyRobotoFont(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: AppSize.kl),
                    OTPInputField(
                      pinController: pinController,
                      otpFocusNode: otpFocusNode,
                      onChanged: (value) {
                        otp.value = value;
                      },
                      onCompleted: (pin) async {
                        final navigator = Navigator.of(context);

                        if (otp.value.isNotEmpty) {
                          try {
                            isLoading.value = true;
                            otpErrorMsg.value = '';

                            await ref.read(initializationProvider).signIn(
                                mobile: mobileController.text, otp: otp.value);

                            // Set visitor user id for matomo analytics
                            _addMatomoAnalytics();

                            navigator.pushNamedAndRemoveUntil(
                                InitializationPage.routeName, (route) => false);
                          } on DioException catch (e) {
                            otpErrorMsg.value =
                                e.response?.data["error_description"] ??
                                    loc.loginInvalidOTP;

                            Fluttertoast.showToast(msg: otpErrorMsg.value);
                          } catch (e) {
                            Fluttertoast.showToast(msg: loc.loginInvalidOTP);
                            otpErrorMsg.value = loc.loginInvalidOTP;
                          } finally {
                            Future.delayed(const Duration(seconds: 2), () {
                              otpErrorMsg.value = "";
                            });
                            pinController.clear();
                            isLoading.value = false;
                          }
                        }
                      },
                    ),
                    const SizedBox(height: AppSize.kl),
                    Row(
                      mainAxisAlignment: kIsWeb
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.center,
                      children: [
                        Text(
                          loc.loginDidntReceiveOTP,
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
                                        msg: loc.loginOTPSent);
                                  } catch (e) {
                                    Fluttertoast.showToast(
                                        msg: loc.loginUnableToSendOTP);
                                  }
                                },
                                child: Text(
                                  loc.resend,
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
                    const SizedBox(height: AppSize.kl),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          otpErrorMsg.value,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.red,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: isLoading.value,
                      child: const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

  _addMatomoAnalytics() {
    var uuid = const Uuid();
    String userId = uuid.v1();
    MatomoLogger.setVisitorUserId(userId);
  }
}
