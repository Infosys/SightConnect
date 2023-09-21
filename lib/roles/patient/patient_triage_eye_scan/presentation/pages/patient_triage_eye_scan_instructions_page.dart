import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/pages/patient_eyes_capture_triage_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientTriageEyeScanInstructions extends StatelessWidget {
  const PatientTriageEyeScanInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                  vertical: AppSize.kspadding,
                ),
              ),
              onPressed: () {},
              child: const Text("Step 3 of 3"),
            ),
            const SizedBox(width: AppSize.kmwidth),
            const Text('Eye Photos'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Capturing the photos of your eyes will help in identifying the visible and noticeable eye issues. This will help us identify the severity of some eye problems.',
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Text(
                "Demonstration",
                style: applyRobotoFont(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Container(
                height: 200,
                width: AppSize.width(context) * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                  color: AppColor.black,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.primary.withOpacity(0.4),
                      blurRadius: 50,
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppImages.tumblingTestPlay,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Text(
                "View Demonstration to know how to capture the photos of your eyes.",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              ListTile(
                onTap: () {},
                tileColor: AppColor.white,
                title: Text(
                  "View Steps to know how to capture the photos of your eyes.",
                  style: applyRobotoFont(
                    fontSize: 14,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: ElevatedButton(
              onPressed: () async {
                var cameras = await availableCameras();
                if (cameras.isEmpty) {
                  return;
                }
                if (context.mounted) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => PatientEyeCaptureTriagePage(
                        cameras: cameras,
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                "Start",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
