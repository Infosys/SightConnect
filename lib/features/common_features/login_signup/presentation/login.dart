import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/auth_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailID = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffold,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: AppSize.height(context) * 0.4,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.white,
                          ),
                          child: SvgPicture.asset(
                            AppIcon.logo,
                            height: 20,
                            width: 20,
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.kmpadding,
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
              child: Column(
                children: [
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (emailID.isEmpty ||
                                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                      .hasMatch(emailID)) {
                                return "Please enter valid email";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                emailID = value;
                              });
                            },
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
                              labelText: "Email",
                              labelStyle: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.klheight,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter password";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                password = value;
                              });
                            },
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
                              labelText: "Password",
                              labelStyle: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.black,
                              ),
                            ),
                          )
                        ],
                      )),
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
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthPage(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: Text(
                    'Login',
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
            ],
          ),
        ));
  }
}
