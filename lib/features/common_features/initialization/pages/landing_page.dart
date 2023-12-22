import 'dart:developer';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/presentation/pages/miniapp_display_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LandingPage extends ConsumerStatefulWidget {
  static const String routeName = '/landing-page';
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 300),
      () async {
        final navigator = Navigator.of(context);
        final status = await _loginVerification();

        if (status) {
          navigator.pushNamedAndRemoveUntil(
            InitializationPage.routeName,
            (route) => false,
          );
        } else {
          return;
        }
      },
    );
  }

  Future<bool> _loginVerification() async {
    final credential =
        await PersistentAuthStateService.authState.getCredentials();
    if (credential == null) return false;
    final isInternetConnected =
        await ref.read(connectivityProvider).isConnected();
    if (isInternetConnected) {
      try {
        final tokens = await credential.getTokenResponse();
        await PersistentAuthStateService.authState.saveTokens(
          accessToken: tokens.accessToken!,
          refreshToken: tokens.refreshToken!,
        );
        return true;
      } catch (e) {
        await PersistentAuthStateService.authState.logout();
        Fluttertoast.showToast(msg: "You have been logged out");
        return false;
        //exception handling
      }
    } else {
      /// offline state
      /// no check here
      /// return true
      return false;
    }
  }

  Future<void> _onSignIn() async {
    final naviagator = Navigator.of(context);
    final model = ref.read(initializationProvider);
    model.init().then((value) {
      naviagator.pushNamedAndRemoveUntil(
        InitializationPage.routeName,
        (route) => false,
      );
    }).catchError((e) {
      Fluttertoast.showToast(msg: "Authentication Failed $e");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(AppSize.width(context) * 0.7, 50),
            ),
            onPressed: () async {
              await _onSignIn();
            },
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}
