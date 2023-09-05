import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthPage extends HookConsumerWidget {
  static const String routeName = '/auth';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState(false);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    AppColor.kPrimary,
                    AppColor.kPrimary.withOpacity(0.8),
                  ],
                ),
              ),
              child: const Header(
                image: "assets/logo/logo.svg",
                subtitle: "Eye Care For All",
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.4,
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Card(
                elevation: 8,
                margin: const EdgeInsets.all(0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? size.width * 1
                            : size.width * 0.7,
                        child: Form(
                          autovalidateMode: AutovalidateMode.always,
                          child: Builder(
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email is required";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        label: Text("Email"),
                                        prefixIcon:
                                            Icon(Icons.person_2_outlined),
                                        contentPadding: EdgeInsets.all(18),
                                      ),
                                    ),
                                    TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password is required";
                                        }
                                        return null;
                                      },
                                      keyboardType: TextInputType.text,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        prefixIcon:
                                            Icon(Icons.password_outlined),
                                        label: Text("Password"),
                                        contentPadding: EdgeInsets.all(18),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        isLoading.value
                                            ? const CircularProgressIndicator
                                                .adaptive()
                                            : ElevatedButton.icon(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xff296DF6),
                                                ),
                                                onPressed: () async {
                                                  var navigator =
                                                      Navigator.of(context);
                                                  if (Form.of(context)
                                                      .validate()) {
                                                    isLoading.value = true;
                                                    await Future.delayed(
                                                      const Duration(
                                                        seconds: 2,
                                                      ),
                                                    );
                                                    isLoading.value = false;
                                                    navigator
                                                        .pushReplacementNamed(
                                                      SplashPage.routeName,
                                                    );
                                                  }
                                                },
                                                icon: const Icon(
                                                  Icons.login,
                                                  color: Colors.white,
                                                ),
                                                label: Text(
                                                  "Sign In",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium
                                                      ?.copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: OutlinedButton.icon(
                                        label: const Text("Register New User "),
                                        icon:
                                            const Icon(Icons.person_add_alt_1),
                                        onPressed: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 80,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
