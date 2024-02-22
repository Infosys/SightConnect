import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_add_patient_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_search_patient_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_dashboard_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianDashboardPage extends StatefulHookConsumerWidget {
  const OptometritianDashboardPage({super.key});

  @override
  ConsumerState<OptometritianDashboardPage> createState() =>
      _OptometritianDashboardPageState();
}

class _OptometritianDashboardPageState
    extends ConsumerState<OptometritianDashboardPage> {
  @override
  Widget build(BuildContext context) {
    var isLoading = useState(false);
    ref.listen(getOptometricianProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from OptometritianDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: "You have been logged out");
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from OptometritianDashboardPage : $e");
          Fluttertoast.showToast(
              msg:
                  "Apologies, we encountered a logout error in the mobile app.");
        });
      }
    });

    return ref.watch(getOptometricianProfileProvider).when(
          data: (data) {
            return _buildPage(ref, context, isLoading);
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(
              body: Center(
                child: Text(
                  error.toString(),
                ),
              ),
            );
          },
        );
  }

  Widget _buildPage(
    WidgetRef ref,
    BuildContext context,
    ValueNotifier<bool> isLoading,
  ) {
    final model = ref.watch(optometricianDashboardProvider);

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: LoadingOverlay(
        isLoading: isLoading.value,
        progressMessage: "Logging out...",
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
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppSize.height(context) * 0.06),
                  Row(
                    children: [
                      Image.asset(
                        AppImages.logo,
                        height: 40,
                        width: 140,
                        colorBlendMode: BlendMode.srcIn,
                        color: AppColor.white,
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          isLoading.value = true;
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
                            isLoading.value = false;
                          }).catchError((e) {
                            isLoading.value = false;
                            Fluttertoast.showToast(
                              msg:
                                  "Apologies, we encountered a logout error in the mobile app.",
                            );
                          });
                        },
                        icon: const Icon(
                          Icons.logout,
                          color: AppColor.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: AppSize.height(context) * 0.04),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello, ",
                          style: applyFiraSansFont(
                            color: AppColor.white,
                            fontSize: 28,
                          ),
                        ),
                        TextSpan(
                          text: ref
                              .watch(globalOptometricianProvider)
                              .activeUserFullName
                              .capitalizeFirstOfEach(),
                          style: applyFiraSansFont(
                            color: AppColor.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSize.height(context) * 0.02),
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
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.kmpadding,
                ),
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
                      child: InfoCardOptometric(
                        "Completed tests",
                        model.optometricianDashboard
                            .totalAssessmentsThisMonthByOptometrist,
                        model.optometricianDashboard.totalAssessmentsThisMonth,
                        "This month",
                        model.optometricianDashboard
                            .totalAssessmentsTodayByOptometrist,
                        model.optometricianDashboard.totalAssessmentsToday,
                        "Today",
                      ),
                    ),
                    const SizedBox(height: AppSize.klheight * 4),
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
                                  "Assessment History",
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
                    const SizedBox(height: AppSize.kmheight),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InfoCardOptometric extends StatelessWidget {
  final String? titleLarge;
  final int? firstValue;
  final int? totalFirstValue;
  final String? firstsubTitle;
  final int? secondValue;
  final int? totalSecondValue;
  final String? secondsubTitle;

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
    if (firstValue == null ||
        totalFirstValue == null ||
        firstsubTitle == null ||
        secondValue == null ||
        totalSecondValue == null ||
        secondsubTitle == null) {
      return Container();
    } else {
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
                    firstValue!.toString(),
                    totalFirstValue!.toString(),
                    firstsubTitle!,
                  ),
                ),
                Flexible(
                  child: _BuildScore(
                    secondValue!.toString(),
                    totalSecondValue!.toString(),
                    secondsubTitle!,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
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
