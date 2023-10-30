import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vision_guardian_add_optometric_data.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vision_guardian_add_patient_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisionGuardianDashboardPage extends StatelessWidget {
  const VisionGuardianDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      extendBody: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.all(AppSize.kmpadding),
              decoration: const BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.klradius),
                  bottomRight: Radius.circular(AppSize.klradius),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSize.klheight * 1.2),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.white,
                        ),
                        child: SvgPicture.asset(
                          AppIcon.logo,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.kmwidth,
                      ),
                      Text(
                        'Optometric Validation',
                        style: applyFiraSansFont(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.klheight * 1.4),
                  Text(
                    "Welcome back",
                    style: applyFiraSansFont(
                      color: AppColor.scaffold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "Anne Mathew",
                    style: applyFiraSansFont(
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: AppSize.klheight),
                  Text(
                    "Have a nice day",
                    style: applyFiraSansFont(
                      fontSize: 14,
                      color: AppColor.white,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 255),
                      width: AppSize.width(context),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: InfoCardOptometric(
                              "Completed tests",
                              "2.5k",
                              "2.8k",
                              "This month",
                              "20",
                              "40",
                              "Today",
                            ),
                          ),
                          SizedBox(
                            width: AppSize.kswidth,
                          ),
                          Flexible(
                            child: InfoCardOptometric(
                              "Pending tests",
                              "08",
                              "40",
                              "Physical",
                              "12",
                              "40",
                              "in-app",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSize.klheight),
                    const Text(
                      "Your Patients",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSize.ksradius,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VgAddOptoData(),
                              fullscreenDialog: true,
                            )),
                        child: ListTile(
                          tileColor: AppColor.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppSize.kmradius,
                            ),
                          ),
                          title: Text(
                            "OP 12345670",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Text(
                            "Diploma",
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VisionGuardianAddPatientPage(),
                fullscreenDialog: true,
              ));
        },
        backgroundColor: AppColor.yellow,
        label: const Text(
          "Patient ID",
          style: TextStyle(
            color: AppColor.black,
          ),
        ),
        icon: const Icon(
          Icons.add,
          color: AppColor.black,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.ksradius,
          ),
        ),
      ),
    );
  }
}

class InfoCardOptometric extends StatelessWidget {
  final String titleLarge;
  final String firstValue;
  final String totalFirstValue;
  final String firstsubTitle;
  final String secondValue;
  final String totalSecondValue;
  final String secondsubTitle;

  const InfoCardOptometric(
      this.titleLarge,
      this.firstValue,
      this.totalFirstValue,
      this.firstsubTitle,
      this.secondValue,
      this.totalSecondValue,
      this.secondsubTitle,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 100,
      ),
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.9),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.ksradius),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            titleLarge,
            style: applyRobotoFont(
              fontSize: 12,
            ),
          ),
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: _BuildScore(
                    firstValue,
                    totalFirstValue,
                    firstsubTitle,
                  ),
                ),
                Flexible(
                  child: _BuildScore(
                    secondValue,
                    totalSecondValue,
                    secondsubTitle,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BuildScore extends StatelessWidget {
  const _BuildScore(
    this.title1,
    this.title2,
    this.subTitle,
  );
  final String title1;
  final String title2;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text.rich(
            overflow: TextOverflow.ellipsis,
            TextSpan(
              children: [
                TextSpan(
                  text: title1,
                  style: applyFiraSansFont(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "/$title2",
                  style: applyFiraSansFont(fontSize: 16, color: AppColor.grey),
                ),
              ],
            ),
          ),
        ),
        Text(
          subTitle,
          style: applyRobotoFont(
            fontSize: 10,
            color: AppColor.black.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
