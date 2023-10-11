import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import 'patient_visual_acuity_initiate_page.dart';

class PatientVisualAcuityInstructionalVideoPage extends HookWidget {
  static const String routeName = "/tumbling-test-instructional-video";
  const PatientVisualAcuityInstructionalVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Instructions"),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(context) * 0.1,
          vertical: AppSize.height(context) * 0.02,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatinetVisualAcuityInitiatePage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text("Start"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.kmpadding)
              : const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "A visual acuity test is an eye exam that checks how well you see the details of a letter or symbol from a specific distance. Do this quick test now!",
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              Text(
                "How to perform the visual acuity test?",
                style:
                    applyRobotoFont(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: AppSize.kmheight),
              Container(
                height: 200,
                width: AppSize.width(context) * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                  boxShadow: appShadow(),
                  color: AppColor.black,
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
              const SizedBox(height: AppSize.kmheight),
              InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         const TumblingEStepsInstructionsPage(),
                  //     fullscreenDialog: true,
                  //   ),
                  // );
                },
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
    );
  }
}
