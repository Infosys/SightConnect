import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/models/drawer_menu_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var items = DrawerMenuItems.all;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 20,
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SvgPicture.asset(
              AppIcon.drawerBg,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.klheight * 2),
                Consumer(
                  builder: (context, ref, child) {
                    return ListTile(
                      onTap: () {
                        ref.read(patientDashboardProvider).changeIndex(0);
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
                          fontSize: 24,
                        ),
                      ),
                    );
                  },
                ),
                ...items.asMap().entries.map(
                      (item) => ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        selectedColor: AppColor.white,
                        onTap: () {
                          switch (item.key) {
                            case 0:
                              break;
                            case 1:
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PatientProfilePage(),
                                ),
                              );
                              break;
                            default:
                          }
                        },
                        leading: SvgPicture.asset(
                          item.value.icon,
                          color: AppColor.white,
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
                const Spacer(flex: 2),
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
                const SizedBox(height: AppSize.klheight)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
