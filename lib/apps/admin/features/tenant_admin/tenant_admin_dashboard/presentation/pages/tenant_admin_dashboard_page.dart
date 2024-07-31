import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_home/presentation/pages/tenant_admin_home_page.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_my_teams/presentation/pages/tenant_admin_my_teams_homepage.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_register_team_member/presentation/pages/tenant_admin_register_team_member_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TenantAdminDashBoardPage extends StatelessWidget {
  const TenantAdminDashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final loc = context.loc!;
    return Scaffold(
      body: const TenantAdminHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.grey,
        unselectedLabelStyle: isMobile
            ? applyRobotoFont(fontSize: 10)
            : applyRobotoFont(fontSize: 16),
        selectedLabelStyle: isMobile
            ? applyRobotoFont(fontSize: 10, fontWeight: FontWeight.w600)
            : applyRobotoFont(fontSize: 16, fontWeight: FontWeight.w600),
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TenantAdminMyTeamsHomePage(),
                ),
              );

              break;
            case 2:
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const TenantAdminRegisterTeamMemberPage(),
                ),
              );
              break;
          }
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: isMobile
                  ? const EdgeInsets.all(4.0)
                  : const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcon.vtHomeIcon,
                height: isMobile ? 20 : 30,
                width: isMobile ? 20 : 30,
                colorFilter: const ColorFilter.mode(
                  AppColor.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: loc.vtDashboard,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: isMobile
                  ? const EdgeInsets.all(4.0)
                  : const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcon.vtRegisterIcon,
                height: isMobile ? 20 : 30,
                width: isMobile ? 20 : 30,
                colorFilter: const ColorFilter.mode(
                  AppColor.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: 'My Team',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: isMobile
                  ? const EdgeInsets.all(4.0)
                  : const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcon.vtIVRCallIcon,
                height: isMobile ? 20 : 30,
                width: isMobile ? 20 : 30,
                colorFilter: const ColorFilter.mode(
                  AppColor.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: loc.vtIVRCallHistory,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: isMobile
                  ? const EdgeInsets.all(4.0)
                  : const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcon.vtRegisterIcon,
                height: isMobile ? 20 : 30,
                width: isMobile ? 20 : 30,
                colorFilter: const ColorFilter.mode(
                  AppColor.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Register Team Member",
          ),
        ],
      ),
    );
  }
}
