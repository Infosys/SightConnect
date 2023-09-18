import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_eye_scan/presentation/pages/assessment_result_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientTriageEyeScanIntroPage extends StatelessWidget {
  const PatientTriageEyeScanIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColor.kBlue,
                  ),
                ),
                child: const Text(
                  "Step 3 of 3",
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColor.kBlue,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
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
                    color: AppColor.kBlack,
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.kPrimary.withOpacity(0.4),
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
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushNamed(TumblingEStepsInstructionsPage.routeName);
                  },
                  tileColor: AppColor.kWhite,
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
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      fullscreenDialog: true,
                      builder: (context) => const AssessmentResultPage(),
                    ),
                  );
                },
                child: const Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ));
  }
}
