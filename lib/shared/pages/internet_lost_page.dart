import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:flutter/material.dart';

class InternetLostPage extends StatelessWidget {
  const InternetLostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
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
            Center(
              child: Text(loc.internetLostNoConnection),
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
              child: Text(loc.internetLostRetry),
            ),
          ],
        ),
      ),
    );
  }
}
