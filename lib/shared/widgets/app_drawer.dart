import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';

import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/models/drawer_menu_item.dart';
import '../pages/about_us_page.dart';
import '../pages/help_and_support_page.dart';
import '../pages/privacy_policy_page.dart';
import '../pages/terms_of_use_page.dart';

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
              AppIcon.drawerBg,
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
                  leading: Icon(
                    Icons.adaptive.arrow_back,
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
                                    case 1:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PatientProfilePage(),
                                        ),
                                      );
                                      break;

                                    case 3:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AssessmentsAndTestsPage(),
                                        ),
                                      );
                                      break;
                                    case 5:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AboutUsPage(),
                                        ),
                                      );
                                      break;
                                    case 6:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const TermsOfUsePage(),
                                        ),
                                      );
                                      break;
                                    case 7:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PrivacyPolicyPage(),
                                        ),
                                      );
                                      break;
                                    case 8:
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HelpAndSupportPage(),
                                        ),
                                      );
                                      break;
                                    default:
                                  }
                                },
                                leading: item.value.icon.contains("svg")
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: SvgPicture.asset(
                                          item.value.icon,
                                          color: AppColor.white,
                                        ),
                                      )
                                    : Container(
                                        height: 40,
                                        width: 40,
                                        transform: Matrix4.translationValues(
                                            -10, 0, 0),
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
                        ListTile(
                          leading: SvgPicture.asset(
                            AppIcon.drawerSignOut,
                            color: AppColor.white,
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
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Powered by",
                        style: applyRobotoFont(
                          fontSize: 10,
                          color: AppColor.white,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Infosys",
                              style: applyRobotoFont(
                                fontSize: 38,
                                color: AppColor.white,
                              ),
                            ),
                            TextSpan(
                              text: "©",
                              style: applyRobotoFont(
                                fontSize: 10,
                                color: AppColor.white,
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Digital Public Stack",
                        style: applyFiraSansFont(
                          fontSize: 18,
                          color: AppColor.white,
                        ),
                      ),
                    ],
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
