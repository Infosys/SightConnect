import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/patient_tumbling_start_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TumblingTestIntroductionPage extends StatelessWidget {
  static const String routeName = '/tumbling-test-introduction';
  const TumblingTestIntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                builder: (context) => const PatientTumblingStartTestPage(),
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
                  "assets/images/play.svg",
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
              onTap: () {},
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
}
