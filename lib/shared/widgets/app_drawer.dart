import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/pages/chatbot_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/app_consent_form.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/common_features/referral/presentation/modals/referral_generate_sheet.dart';
import 'package:eye_care_for_all/features/common_features/tenant/presentation/pages/patient_tenants_display_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/helpers/show_feedback_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:superapp_scanner/pages/superapp_scanner_page.dart';

import '../../core/models/drawer_menu_item.dart';
import '../pages/about_us_page.dart';
import '../pages/help_and_support_page.dart';

class AppDrawer extends HookWidget {
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
    var isLoading = useState(false);
    final allRoles = PersistentAuthStateService.authState.roles;
    if (allRoles != null && allRoles.length == 1) {
      items = items.where((element) {
        return element.id != DrawerMenuItemId.switchProfile;
      }).toList();
    }

    // bool isBeta = PersistentAuthStateService.authState.isUserTypeBeta;
    // if (!isBeta) {
    //   items = items.where((element) {
    //     return element.id != DrawerMenuItemId.referral;
    //   }).toList();
    // }

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Padding(
        padding: EdgeInsets.only(
          top: AppSize.height(context) * 0.03,
          left: AppSize.width(context) * 0.2,
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
          child: Scaffold(
            backgroundColor: AppColor.white,
            body: LoadingOverlay(
              isLoading: isLoading.value,
              progressMessage: loc.optoLoggingOut,
              child: SingleChildScrollView(
                child: Column(
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
                                  case DrawerMenuItemId.tenant:
                                    final navigator = Navigator.of(context);

                                    navigator.push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PatientTenantsDisplayPage(),
                                      ),
                                    );
                                    break;
                                  case DrawerMenuItemId.switchProfile:
                                    final navigator = Navigator.of(context);
                                    await ref
                                        .read(initializationProvider)
                                        .resetProfile();
                                    navigator.pushNamedAndRemoveUntil(
                                        InitializationPage.routeName,
                                        (route) => false);
                                    break;
                                  case DrawerMenuItemId.accessibilities:
                                    Navigator.of(context).pop();
                                    onAccessibilityChange?.call();
                                    break;

                                  case DrawerMenuItemId.language:
                                    Navigator.of(context).pop();
                                    onLanguageChange?.call();
                                    break;

                                  case DrawerMenuItemId.referral:
                                    showReferralCodeBottomSheet(context);
                                    break;
                                  case DrawerMenuItemId.feedback:
                                    showFeedbackBottomSheet(context);

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
                                        builder: (context) =>
                                            const AboutUsPage(),
                                      ),
                                    );
                                    break;

                                  case DrawerMenuItemId.privacyPolicy:
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const AppConsentFormPage(
                                          isPreview: true,
                                        ),
                                      ),
                                    );
                                    break;
                                  case DrawerMenuItemId.help:
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HelpAndSupportPage(
                                          helpLine:
                                              AppInfoService.tollFreeNumber,
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
                                          var currentLanguageCode =
                                              languageProvider
                                                  .currentLocale!.languageCode;
                                          logger
                                              .d("language: $currentLanguage");
                                          return ChatBotPage(
                                            selectedLanguage: currentLanguage,
                                            selectedLanguageCode:
                                                currentLanguageCode,
                                            welcomeMessage:
                                                loc.chatBotWelcomeMessage,
                                            defaultQuerySuggestions: loc
                                                .chatBotDefaultQuerySuggestions
                                                .split("|"),
                                          );
                                        },
                                      ),
                                    );
                                    break;

                                  default:
                                }
                              },
                              visualDensity:
                                  const VisualDensity(horizontal: -4),
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
                    // const Spacer(),
                    const Divider(),
                    Consumer(
                      builder: (context, ref, _) => ListTile(
                        onTap: () async {
                          isLoading.value = true;
                          final navigator = Navigator.of(context);
                          ref
                              .read(initializationProvider)
                              .logout()
                              .then((value) async {
                            isLoading.value = false;
                            navigator.pushNamedAndRemoveUntil(
                              LoginPage.routeName,
                              (route) => false,
                            );
                            ref.invalidate(initializationProvider);
                          }).catchError((e) {
                            isLoading.value = false;
                            Fluttertoast.showToast(
                                msg: loc.appDrawerToastMessageText);
                          });
                        },
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.primary.withOpacity(0.2),
                          ),
                          child: SvgPicture.asset(
                            "assets/drawer_icons/signout.svg",
                          ),
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
                    const SizedBox(height: AppSize.kl),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "App Version: ${AppInfoService.appVersion}",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.normal,
                            color: AppColor.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.kl)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showReferralCodeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const ReferralCodeBottomSheet(),
    );
  }
}
