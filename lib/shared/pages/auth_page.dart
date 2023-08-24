import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  static const String routeName = '/auth';
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              SplashPage.routeName,
              (route) => false,
            );
          },
          child: const Text("Login Now"),
        ),
      ),
    );
  }
}
