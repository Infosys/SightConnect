import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/pages/chatbot_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:superapp_scanner/pages/superapp_scanner_page.dart';

import '../../core/models/drawer_menu_item.dart';
import '../pages/about_us_page.dart';
import '../pages/help_and_support_page.dart';
import '../pages/patient_privacy_policy_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    this.onLanguageChange,
    this.onAccessibilityChange,
  });

  final VoidCallback? onLanguageChange;
  final VoidCallback? onAccessibilityChange;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    var items = DrawerMenuItems.getAll(loc);

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Padding(
        padding: EdgeInsets.only(
          top: AppSize.height(context) * 0.07,
          left: AppSize.width(context) * 0.2,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
          child: Scaffold(
            backgroundColor: AppColor.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Consumer(
                  builder: (context, ref, child) {
                    final model = ref.watch(patientDashboardProvider);
                    return ListTile(
                      onTap: () {
                        model.setVisibility(true);
                        Navigator.pop(context);
                      },
                      trailing: const Icon(
                        Icons.close,
                      ),
                      title: Row(
                        children: [
                          Text(
                            loc.appDrawerTitle,
                            style: applyFiraSansFont(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                ...items.map(
                  (item) {
                    return Consumer(
                      builder: (context, ref, child) {
                        return ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onTap: () async {
                            switch (item.id) {
                              case DrawerMenuItemId.accessibilities:
                                Navigator.of(context).pop();
                                onAccessibilityChange?.call();
                                break;

                              case DrawerMenuItemId.language:
                                Navigator.of(context).pop();
                                onLanguageChange?.call();
                                break;

                              case DrawerMenuItemId.assessments:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AssessmentsAndTestsPage(),
                                  ),
                                );
                                break;
                              case DrawerMenuItemId.scanner:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SuperAppScannerPage(),
                                  ),
                                );
                                break;
                              case DrawerMenuItemId.about:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const AboutUsPage(),
                                  ),
                                );
                                break;

                              case DrawerMenuItemId.privacyPolicy:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PatientPrivacyPolicyPage(),
                                  ),
                                );
                                break;
                              case DrawerMenuItemId.help:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HelpAndSupportPage(
                                      helpLine: AppText.tollFreeNumber,
                                    ),
                                  ),
                                );
                                break;
                              case DrawerMenuItemId.chatbot:
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      var languageProvider =
                                          ref.watch(globalLanguageProvider);
                                      var currentLanguage =
                                          languageProvider.currentLanguage;
                                      var currentLanguageCode = languageProvider
                                          .currentLocale.languageCode;
                                      debugPrint("language: $currentLanguage");
                                      return Consumer(
                                        builder: (context, ref, child) {
                                          return ref
                                              .watch(getTriageProvider)
                                              .when(
                                            data: (data) {
                                              return ChatBotPage(
                                                selectedLanguageCode:
                                                    currentLanguageCode,
                                                selectedLanguage:
                                                    currentLanguage,
                                                welcomeMessage:
                                                    loc.chatBotWelcomeMessage,
                                                // defaultQuerySuggestions: const [
                                                //   "Tips to avoid eye strain",
                                                //   "Common eye issues",
                                                //   "Tips for a better eye sight",
                                                // ],
                                                defaultQuerySuggestions: loc
                                                    .chatBotDefaultQuerySuggestions
                                                    .split("|"),
                                                // loadedTriageQuestionnaire: data
                                                //         .questionnaire
                                                //         ?.questionnaireItem ??
                                                //     [],
                                              );
                                            },
                                            error: (error, stackTrace) {
                                              return Scaffold(
                                                body: Center(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Center(
                                                        child: Text(
                                                            error.toString()),
                                                      ),
                                                      const SizedBox(
                                                        height:
                                                            AppSize.klheight,
                                                      ),
                                                      TextButton.icon(
                                                        onPressed: () {
                                                          ref.invalidate(
                                                              getTriageProvider);
                                                        },
                                                        icon: const Icon(Icons
                                                            .refresh_outlined),
                                                        label: Text(
                                                            loc.retryButton),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                            loading: () {
                                              return const Scaffold(
                                                body: Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                );
                                break;
                              default:
                            }
                          },
                          visualDensity: const VisualDensity(horizontal: -4),
                          leading: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.primary.withOpacity(0.2),
                            ),
                            child: SvgPicture.asset(
                              item.icon,
                              height: 18,
                              width: 18,
                              colorFilter: const ColorFilter.mode(
                                AppColor.primary,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          title: Text(
                            item.title,
                            style: applyRobotoFont(
                              fontWeight: FontWeight.normal,
                              color: AppColor.grey,
                              fontSize: 14,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                const Spacer(),
                const Divider(),
                Consumer(
                  builder: (context, ref, _) => ListTile(
                    onTap: () async {
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
                    leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primary.withOpacity(0.2),
                      ),
                      child:
                          SvgPicture.asset("assets/drawer_icons/signout.svg"),
                    ),
                    title: Text(
                      loc.appDrawerSignOut,
                      style: applyRobotoFont(
                        fontWeight: FontWeight.normal,
                        color: AppColor.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
