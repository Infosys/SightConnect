import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_add_patient_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_search_patient_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianDashboardPage extends ConsumerWidget {
  const OptometritianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Stack(
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
            padding: const EdgeInsets.all(AppSize.klpadding),
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
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PatientDashboardPage()),
                            (route) => false);
                      },
                      child: Text(
                        'ClinicalVal',
                        style: applyFiraSansFont(
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          final navigator = Navigator.of(context);
                          ref
                              .read(initializationProvider)
                              .logout()
                              .then((value) async {
                            navigator.pushNamedAndRemoveUntil(
                              LoginPage.routeName,
                              (route) => false,
                            );
                            ref.invalidate(initializationProvider);
                          }).catchError((e) {
                            Fluttertoast.showToast(
                              msg: e.toString(),
                            );
                          });
                        },
                        icon: const Icon(Icons.logout))
                  ],
                ),
                const SizedBox(height: AppSize.klheight * 1.5),
                Text(
                  "Welcome",
                  style: applyFiraSansFont(
                    color: AppColor.scaffold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "Let's get started",
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
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSize.width(context) * 0.07,
                    ),
                    margin: const EdgeInsets.only(top: 250),
                    width: AppSize.width(context),
                    child: const InfoCardOptometric(
                      "Completed tests",
                      "2,000",
                      "2,480",
                      "This month",
                      "120",
                      "148",
                      "Today",
                    ),
                  ),
                  const SizedBox(height: AppSize.klheight),
                  Text(
                    "Services",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.klheight),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const OptometricianAddPatientPage(),
                            ),
                          );
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         const VisualAcuityTumblingPage(),
                          //   ),
                          // );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.cyanGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSize.width(context) * 0.105,
                              vertical: 15),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                AppIcon.optometritianAddPatient,
                                height: 28,
                                width: 23,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Start Assessment",
                                softWrap: false,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: applyFiraSansFont(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const OptometritianSearchPatientPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.butterCream,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.width(context) * 0.105,
                            vertical: 15,
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/optometritian_search_history.svg",
                                height: 28,
                                width: 23,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Past Assessments",
                                softWrap: false,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: applyFiraSansFont(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
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
      padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kmpadding, vertical: AppSize.kselevation + 2),
      decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.9),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.kmradius + 2),
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
          Text(
            "Eye Assessments",
            style: applyRobotoFont(fontSize: 12),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
