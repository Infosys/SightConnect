import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:flutter/material.dart';

class SharedErrorAppPage extends StatelessWidget {
  const SharedErrorAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppText.appName,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "We are facing some issues. Please try again later.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
