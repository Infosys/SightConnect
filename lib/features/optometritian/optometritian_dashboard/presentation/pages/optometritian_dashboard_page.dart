import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_add_patient_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_search_patient_page.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_dashboard_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:upgrader/upgrader.dart';

class OptometritianDashboardPage extends StatefulHookConsumerWidget {
  const OptometritianDashboardPage({super.key});

  @override
  ConsumerState<OptometritianDashboardPage> createState() =>
      _OptometritianDashboardPageState();
}

class _OptometritianDashboardPageState
    extends ConsumerState<OptometritianDashboardPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.watch(optometricianDashboardProvider).getOptometricianDashboard(
          ref.read(globalOptometricianProvider).preferredUsername!);
    });
  }

  @override
  Widget build(BuildContext context) {
    var isLoading = useState(false);
    final loc = context.loc!;
    ref.listen(getOptometricianProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from OptometritianDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: loc.loggedOutMessage);
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from OptometritianDashboardPage : $e");
          Fluttertoast.showToast(msg: loc.optoLogoutError);
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
    var logoutLoading = useState(false);
    var switchProfileLoading = useState(false);
    final loc = context.loc!;
    return UpgradeAlert(
      dialogStyle: UpgradeDialogStyle.cupertino,
      showIgnore: kDebugMode ? true : false,
      showLater: kDebugMode ? true : false,
      shouldPopScope: () => kDebugMode ? true : false,
      canDismissDialog: kDebugMode ? true : false,
      onUpdate: () {
        return true;
      },
      upgrader: Upgrader(
        durationUntilAlertAgain: const Duration(milliseconds: 800),
        willDisplayUpgrade: ({
          appStoreVersion,
          required display,
          installedVersion,
          minAppVersion,
        }) {
          logger.d({
            "appStoreVersion": appStoreVersion,
            "display": display,
            "installedVersion": installedVersion,
            "minAppVersion": minAppVersion,
          });
        },
      ),
      child: Scaffold(
        backgroundColor: AppColor.scaffold,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: LoadingOverlay(
          isLoading: isLoading.value,
          progressMessage: logoutLoading.value == true
              ? loc.optoLoggingOut
              : switchProfileLoading.value == true
                  ? "Switching Profile"
                  : "",
          child: Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.all(AppSize.km),
                decoration: const BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppSize.kl),
                    bottomRight: Radius.circular(AppSize.kl),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppSize.ks),
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
                            switchProfileLoading.value = true;
                            final navigator = Navigator.of(context);
                            await ref
                                .read(initializationProvider)
                                .resetProfile();
                            navigator.pushNamedAndRemoveUntil(
                                InitializationPage.routeName, (route) => false);
                            ref.invalidate(initializationProvider);
                            isLoading.value = false;
                          },
                          icon: const Icon(Icons.person),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: AppSize.ks,
                        ),
                        IconButton(
                          onPressed: () async {
                            isLoading.value = true;
                            logoutLoading.value = true;
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
                                msg: loc.optoLogoutError,
                              );
                            });
                          },
                          icon: const Icon(
                            Icons.logout,
                            color: AppColor.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSize.height(context) * 0.04),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "${loc.hello}, ",
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
                      loc.optoGetStarted,
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
                    horizontal: AppSize.km,
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
                          loc.optoCompletedTests,
                          model.optometricianDashboard
                              .totalAssessmentsThisMonthByOptometrist,
                          model
                              .optometricianDashboard.totalAssessmentsThisMonth,
                          loc.optoThisMonth,
                          model.optometricianDashboard
                              .totalAssessmentsTodayByOptometrist,
                          model.optometricianDashboard.totalAssessmentsToday,
                          loc.today,
                        ),
                      ),
                      const SizedBox(height: AppSize.kl * 4),
                      Text(
                        loc.services,
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: AppSize.kl),
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
                                    loc.startAssessment,
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
                                    loc.optoAssessmentHistory,
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
                      const SizedBox(height: AppSize.km),
                    ],
                  ),
                ),
              )
            ],
          ),
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
    }
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSize.km, vertical: AppSize.ks + 2),
      decoration: BoxDecoration(
          color: AppColor.white.withOpacity(0.9),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.km + 2),
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
            loc.optoEyeAssessments,
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
