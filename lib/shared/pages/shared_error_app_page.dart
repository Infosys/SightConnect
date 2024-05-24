import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class SharedErrorAppPage extends StatelessWidget {
  const SharedErrorAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return MaterialApp(
      title: AppInfoService.appName,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            loc.sharedErrorPageIssues,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
