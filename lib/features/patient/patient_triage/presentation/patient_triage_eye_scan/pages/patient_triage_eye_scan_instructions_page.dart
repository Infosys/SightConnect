import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../patient_triage_member_selection/widget/patient_triage_steps_drawer.dart';
import 'patient_eyes_capture_triage_page.dart';

class PatientTriageEyeScanInstructions extends StatelessWidget {
  const PatientTriageEyeScanInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PatientTriageStepsDrawer(),
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "3 of 3",
              style: applyRobotoFont(
                color: AppColor.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
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
                'You are close! Just one more test to go. Capture the photos of your eyes next.',
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Text(
                "How to scan your eyes?",
                style:
                    applyRobotoFont(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: AppSize.kmheight),
              Container(
                height: 200,
                width: AppSize.width(context) * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                  color: AppColor.black,
                  boxShadow: appShadow(),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Divider(),
              ),
              const SizedBox(height: AppSize.klheight),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.primary.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.vibration, color: AppColor.blue),
                      const SizedBox(width: AppSize.kswidth),
                      Text(
                        "View Steps to perform Tumbling E Test",
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
