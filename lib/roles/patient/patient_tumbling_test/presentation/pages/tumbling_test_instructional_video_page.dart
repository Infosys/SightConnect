import 'dart:async';
import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_e_steps_instruction_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
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
      appBar: const CustomAppBar(
        title: "Tumbling Test",
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width * 0.1,
          vertical: AppSize.height * 0.02,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TumblingTestInitiatePage(),
              ),
            );
          },
          child: const Text("Next"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kspadding),
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
              width: AppSize.width * 0.9,
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
    );
  }

  void _showTermsOfUseDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: AlertDialog(
            title: Text(
              'Terms of Use',
              style: applyFiraSansFont(
                fontSize: 18,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Legal disclaimer: The content on this application is presented for informational purposes only.\n\nNever disregard professional medical advice from your healthcare provider, or delay in seeking it, because of using this application.\n\nThe developer of this app, cannot be held liable for any damages of any kind related to the usage of this software.\n\nREMEMBER: It’s people who resolve vision problems. Our technology is designed to help them do that. Full terms of use",
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Full terms of use",
                    style: applyRobotoFont(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Accept'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            ref.read(patientDashboardProvider).changeIndex(0);
                          },
                          child: const Text('Decline'),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
