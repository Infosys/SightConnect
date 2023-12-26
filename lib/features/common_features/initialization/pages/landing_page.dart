import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/pages/vision_technician_dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LandingPage extends ConsumerStatefulWidget {
  static const String routeName = '/landing';
  const LandingPage({super.key});

  @override
  ConsumerState<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () async {
        final navigator = Navigator.of(context);
        navigator.pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) => const VisionTechnicianDashboardPage()),
          (route) => false,
        );
        // final status = await _loginVerification();
        // if (status) {
        //   navigator.pushNamedAndRemoveUntil(
        //     InitializationPage.routeName,
        //     (route) => false,
        //   );
        // }
      },
    );
  }

  Future<bool> _loginVerification() async {
    final isLoggedIn = PersistentAuthStateService.authState.isLoggedIn;
    // final isInternetConnected =
    //     await ref.read(connectivityProvider).isConnected();
    // if (!isInternetConnected) {
    //   return false;
    // }
    if (!isLoggedIn) {
      return false;
    }
    return true;
  }

  Future<void> _onSignIn() async {
    final naviagator = Navigator.of(context);
    final model = ref.read(initializationProvider);
    model.init().then((value) {
      if (PersistentAuthStateService.authState.isLoggedIn) {
        naviagator.pushNamedAndRemoveUntil(
          InitializationPage.routeName,
          (route) => false,
        );
      } else {
        Fluttertoast.showToast(msg: "Authentication Failed");
      }
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
