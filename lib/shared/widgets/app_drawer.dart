import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';

import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
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
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var items = DrawerMenuItems.all;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            SvgPicture.asset(
              AppImages.drawerBg,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.klheight),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  ),
                  title: Text(
                    "Menu",
                    style: applyFiraSansFont(
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...items.asMap().entries.map(
                              (item) => ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                splashColor: AppColor.blue,
                                onTap: () {
                                  switch (item.key) {
                                    case 0:
                                      Navigator.of(context).pop();
                                      break;

                                    case 1:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PatientProfilePage(),
                                        ),
                                      );

                                    case 2:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AssessmentsAndTestsPage(),
                                        ),
                                      );
                                      break;
                                    case 3:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SuperAppScannerPage(),
                                        ),
                                      );
                                      break;
                                    case 4:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutUsPage(),
                                        ),
                                      );
                                      break;
                                    // case 5:
                                    //   Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //       builder: (context) =>
                                    //           const TermsOfUsePage(),
                                    //     ),
                                    //   );
                                    //   break;
                                    case 5:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PatientPrivacyPolicyPage(),
                                        ),
                                      );
                                      break;
                                    case 6:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HelpAndSupportPage(
                                            helpLine: AppText.tollFreeNumber,
                                          ),
                                        ),
                                      );
                                      break;
                                    default:
                                  }
                                },
                                visualDensity:
                                    const VisualDensity(horizontal: -4),
                                leading: item.value.icon.contains("svg")
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: SvgPicture.asset(
                                          item.value.icon,
                                          colorFilter: const ColorFilter.mode(
                                            AppColor.white,
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: 40,
                                        width: 40,
                                        transform: Matrix4.translationValues(
                                          -10,
                                          0,
                                          0,
                                        ),
                                        child: Image.asset(
                                          item.value.icon,
                                          alignment: Alignment.centerLeft,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                title: Text(
                                  item.value.title,
                                  style: applyFiraSansFont(
                                    color: AppColor.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
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
                            leading: SvgPicture.asset(
                              AppIcon.drawerSignOut,
                              colorFilter: const ColorFilter.mode(
                                AppColor.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            title: Text(
                              "Sign Out",
                              style: applyFiraSansFont(
                                color: AppColor.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
