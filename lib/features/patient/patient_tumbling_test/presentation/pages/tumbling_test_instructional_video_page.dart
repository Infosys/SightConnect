import 'dart:async';
import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/pages/tumbling_e_steps_instruction_page.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class TumblingTestInstructionalVideoPage extends HookWidget {
  static const String routeName = "/tumbling-test-instructional-video";
  const TumblingTestInstructionalVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final timer = Timer(const Duration(milliseconds: 1), () {
        _showTermsOfUseDialog(context);
      });

      return timer.cancel;
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Step 2 of 3",
              style: applyRobotoFont(
                color: AppColor.primary,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: AppSize.kmwidth),
            const Text(
              "Tumbling Test",
            ),
          ],
        ),
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
                builder: (context) => const TumblingTestInitiatePage(),
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
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.primary.withOpacity(0.4),
                        blurRadius: 50,
                        spreadRadius: 10),
                  ],
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const TumblingEStepsInstructionsPage(),
                      fullscreenDialog: true,
                    ),
                  );
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

  void _showTermsOfUseDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return BlurDialogBox(
          title: Text(
            'Tests to Perform',
            style: applyFiraSansFont(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          content: Text(
            "Thanks for answering the questions. Based on the initial assessment you need to perform the below tests.\n\n1. Tumbling E\n2. Eye Photos\n\nYou will be guided step-by-step to perform each test. Follow instructions and perform the steps as instructed.",
            textAlign: TextAlign.justify,
            style: applyRobotoFont(
              fontSize: 14,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Proceed",
                style: applyRobotoFont(fontSize: 14, color: AppColor.primary),
              ),
            ),
          ],
        );
      },
    );
  }
}
