import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:flutter/material.dart';

class InternetLostPage extends StatelessWidget {
  const InternetLostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.wifi_off,
              size: 100,
            ),
            const Center(
              child: Text("No Internet Connection"),
            ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
                    InitializationPage.routeName,
                    (Route<dynamic> route) => false);
              },
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
