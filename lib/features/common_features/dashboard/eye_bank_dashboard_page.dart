import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_dashboard_pages.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/consultant/dashboard/presentation/counselor_dashboard_page.dart';
import 'package:eye_care_for_all/features/doctor/dashboard/presentation/pages/doctor_dashboard_page.dart';
import 'package:eye_care_for_all/features/technician/dashboard/presentation/pages/technician_dashboard_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeBankDashboardPage extends StatefulWidget {
  const EyeBankDashboardPage({super.key});

  @override
  State<EyeBankDashboardPage> createState() => _EyeBankDashboardPageState();
}

class _EyeBankDashboardPageState extends State<EyeBankDashboardPage> {
  EyeBankRoles role = EyeBankRoles.EYE_BANK_MANAGER;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const EyeBankDrawer(),
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.logo,
              height: Responsive.isMobile(context) ? 20 : 30,
            ),
            const Spacer(),
          ],
        ),
        actions: [
          PopupMenuButton<EyeBankRoles>(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: AppColor.grey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    role.name,
                    style: const TextStyle(color: AppColor.grey),
                  ),
                ],
              ),
            ),
            onSelected: (value) {
              setState(() {
                role = value;
              });
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<EyeBankRoles>>[
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.TRANSPLANT_SURGEON,
                child: Text('Transplant Surgeon'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.EYE_BANK_MANAGER,
                child: Text('Eye Bank Manager'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.RECOVERY_TECHNICIAN,
                child: Text('Recovery Technician'),
              ),
              const PopupMenuItem<EyeBankRoles>(
                value: EyeBankRoles.LAB_TECHNICIAN,
                child: Text('Lab Technician'),
              ),
            ],
          ),
        ],
      ),

      // create a switch case based on role

      body: AnimatedSwitcher(
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        duration: const Duration(milliseconds: 600),
        child: () {
          switch (role) {
            case EyeBankRoles.TRANSPLANT_SURGEON:
              return const DoctorDashBoardPage();
            case EyeBankRoles.EYE_BANK_MANAGER:
              return const AdminDashboardPages();
            case EyeBankRoles.LAB_TECHNICIAN:
              return const TechnicianDashboardPage();
            case EyeBankRoles.RECOVERY_TECHNICIAN:
              return const CounselorDashboardPage();
            default:
              return Container();
          }
        }(),
      ),
    );
  }
}

enum EyeBankRoles {
  TRANSPLANT_SURGEON,
  EYE_BANK_MANAGER,
  RECOVERY_TECHNICIAN,
  LAB_TECHNICIAN,
}

class EyeBankDrawer extends HookWidget {
  const EyeBankDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final loc = context.loc!;
    return Drawer(
      child: LoadingOverlay(
        isLoading: isLoading.value,
        child: Column(
          children: [
            SizedBox(
              // Add SizedBox
              height: 100,
              child: DrawerHeader(
                decoration: const BoxDecoration(),
                child: Center(
                  child: Image.asset(
                    AppImages.logo,
                    height: 50,
                  ),
                ),
              ),
            ),
            Consumer(
              builder: (context, ref, _) => ListTile(
                onTap: () async {
                  final navigator = Navigator.of(context);
                  await ref.read(initializationProvider).resetProfile();
                  navigator.pushNamedAndRemoveUntil(
                      InitializationPage.routeName, (route) => false);
                },
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primary.withOpacity(0.4),
                  ),
                  child: SvgPicture.asset(
                    "assets/drawer_icons/switch.svg",
                  ),
                ),
                title: Text(
                  loc.switchRole,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.normal,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const Divider(),
            Consumer(
              builder: (context, ref, _) => ListTile(
                onTap: () async {
                  final navigator = Navigator.of(context);
                  await ref
                      .read(initializationProvider)
                      .logout()
                      .catchError((e) {
                    navigator.pushNamedAndRemoveUntil(
                        LoginPage.routeName, (route) => false);
                  });
                  await navigator.pushNamedAndRemoveUntil(
                      LoginPage.routeName, (route) => false);
                  ref.invalidate(initializationProvider);
                  //////////
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
          ],
        ),
      ),
    );
  }
}
