// import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/pages/patient_eyes_capture_page.dart';
import 'package:flutter/material.dart';

class InternetLostPage extends StatelessWidget {
  const InternetLostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              onPressed: () {},
              child: const Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
