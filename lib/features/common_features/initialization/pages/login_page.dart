import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mobileController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool _showOtp = false;

  @override
  void dispose() {
    mobileController.dispose();
    focusNode.dispose();
    focusNode.requestFocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          crossFadeState:
              _showOtp ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(AppSize.width(context) * 0.9, 40),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        _showOtp = true;
                      });
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
                "Please enter the OTP we have sent to your mobile",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              OtpTextField(
                numberOfFields: 5,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    },
                  );
                },
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
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {},
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
              const SizedBox(height: AppSize.klheight * 2),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(AppSize.width(context) * 0.9, 40),
                ),
                onPressed: () {},
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
}
