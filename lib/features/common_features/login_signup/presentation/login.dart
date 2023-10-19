import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/auth_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isMobileNumberEntered = false;
  String mobileNumber = "";
  String otp = "";

  validateMobileNumber() {
    var regx = RegExp(r"^[0-9]*$");

    if (regx.hasMatch(mobileNumber)) {
      if (mobileNumber.length == 10) {
        return true;
      }
    }
    return false;
  }

  validateOTP() {
    var regx = RegExp(r"^[0-9]*$");
    if (regx.hasMatch(otp)) {
      if (otp.length == 4) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffold,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: AppSize.height(context) * 0.5,
              width: AppSize.width(context),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: AppColor.primary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo/logo.svg',
                        height: 80,
                        width: 80,
                        color: AppColor.white,
                      ),
                      Text(
                        'Eye Care For All',
                        style: applyFiraSansFont(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Image.asset('assets/images/login.png'),
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                AppSize.kmpadding,
              ),
              child: isMobileNumberEntered
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Text(
                          "Verify Mobile Number",
                          style: applyFiraSansFont(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.ksheight,
                        ),
                        Text(
                          "Please enter the OTP we have sent to ********90",
                          style: applyRobotoFont(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.klheight * 2,
                        ),
                        Center(
                          child: OTPTextField(
                            length: 4,
                            width: MediaQuery.of(context).size.width * 0.5,
                            style: const TextStyle(fontSize: 17),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.underline,
                            onCompleted: (pin) {
                              setState(() {
                                otp = pin;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Didn’t receive the OTP?",
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Resend OTP",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.primary,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        TextField(
                          onChanged: (value) {
                            setState(() {
                              mobileNumber = value;
                            });
                          },
                          keyboardType: const TextInputType.numberWithOptions(
                            signed: true,
                            decimal: true,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: AppColor.primary,
                              ),
                            ),
                            labelText: "Mobile Number",
                            labelStyle: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.black,
                            ),
                          ),
                        )
                      ],
                    ),
            )
          ],
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    if (isMobileNumberEntered) {
                      if (validateOTP()) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AuthPage(),
                          ),
                          (route) => false,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter valid OTP'),
                          ),
                        );
                      }
                    } else {
                      if (validateMobileNumber()) {
                        setState(() {
                          isMobileNumberEntered = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please enter valid mobile number'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text(
                    isMobileNumberEntered ? 'Login' : 'Get OTP',
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",
                        style: applyRobotoFont(
                          fontSize: 12,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("Sign Up?",
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.primary,
                          decoration: TextDecoration.underline,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Center(child: BrandingWidgetH()),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ));
  }
}
