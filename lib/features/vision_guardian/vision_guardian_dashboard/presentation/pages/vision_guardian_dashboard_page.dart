import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vision_guardian_add_patient_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianDashboardPage extends StatelessWidget {
  const VisionGuardianDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  padding: const EdgeInsets.all(
                    AppSize.kmpadding,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.klradius),
                      bottomRight: Radius.circular(AppSize.klradius),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: AppSize.klheight * 1.2,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.insert_chart,
                            color: AppColor.white,
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
                      const SizedBox(
                        height: AppSize.klheight * 1.4,
                      ),
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
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
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
                    margin: const EdgeInsets.only(top: 255),
                    width: AppSize.width(context),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoCardOptometric(
                          "Completed tests",
                          "2.5k",
                          "2.8k",
                          "This month",
                          "20",
                          "40",
                          "Today",
                        ),
                        InfoCardOptometric(
                          "Pending tests",
                          "08",
                          "40",
                          "Physical",
                          "12",
                          "40",
                          "in-app",
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kmpadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                  const Text(
                    "Your Patients",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  ListTile(
                    tileColor: AppColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    title: const Text(
                      "OP 12345670",
                    ),
                    trailing: const Text(
                      "Diploma",
                    ),
                  )
                ],
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
      width: AppSize.width(context) * 0.4,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titleLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        firstValue,
                        style: applyFiraSansFont(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text("/$totalFirstValue",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            color: AppColor.black.withOpacity(0.4),
                          )),
                    ],
                  ),
                  Text(
                    firstsubTitle,
                    style: applyRobotoFont(
                      fontSize: 10,
                      color: AppColor.black.withOpacity(0.4),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        secondValue,
                        style: applyFiraSansFont(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text("/$totalSecondValue",
                          style: applyFiraSansFont(
                            fontSize: 16,
                            color: AppColor.black.withOpacity(0.4),
                          )),
                    ],
                  ),
                  Text(
                    secondsubTitle,
                    style: applyRobotoFont(
                      fontSize: 10,
                      color: AppColor.black.withOpacity(0.4),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
