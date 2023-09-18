import 'dart:async';
import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_e_steps_instruction_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                  vertical: AppSize.kspadding,
                ),
              ),
              onPressed: () {},
              child: const Text("Step 2 of 3"),
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
              ? const EdgeInsets.all(AppSize.kspadding)
              : const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Visual acuity is a measure of the human eye’s ability to discern spatial details. It is the ability to distinguish letters or symbols on an eye chart at a certain distance",
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
                  color: AppColor.kBlack,
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
                "View Demonstration video to perform Tumbling E Test",
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.kmheight),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(TumblingEStepsInstructionsPage.routeName);
                },
                tileColor: AppColor.kWhite,
                title: Text(
                  "View Steps to perform Tumbling E Test",
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
    );
  }

  void _showTermsOfUseDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog.adaptive(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              'Tests to Perform',
              style: applyFiraSansFont(
                fontSize: 24,
                fontWeight: FontWeight.w700
              ),
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
                child: Text("Proceed",
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.kPrimary
                ),),
              ),
            ],
          ),
        );
      },
    );
  }
}
