import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/pages/vision_technician_register_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/pages/vision_technician_ivr_call_history_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/pages/vision_technician_mark_my_availability_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianDashboardPage extends ConsumerWidget {
  const VisionTechnicianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    ref.listen(getVTProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from VisionTechnicianDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: loc.vtLogoutMessage);
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from VisionTechnicianDashboardPage : $e");
          Fluttertoast.showToast(msg: loc.vtLogoutError);
        });
      }
    });
    return ref.watch(getVTProfileProvider).when(
          data: (data) {
            return _content(context, ref);
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(body: Text("Error $error"));
          },
        );
  }

  Widget _content(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);
    final loc = context.loc!;
    return Scaffold(
      body: const VisionTechnicianHomePage(),
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
                  builder: (context) => const VisionTechnicianRegisterPage(),
                ),
              );
              break;
            // case 2:
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const VisionTechnicianRegisterPage(),
            //     ),
            //   );

            //   break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionTechnicianMarkMyAvailabilityPage(),
                ),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionTechnicianIvrCallHistory(),
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
            label: loc.vtRegisterPatient,
          ),
          // BottomNavigationBarItem(
          //   icon: Padding(
          //     padding: isMobile
          //         ? const EdgeInsets.all(4.0)
          //         : const EdgeInsets.all(8.0),
          //     child: SvgPicture.asset(
          //       "assets/nav_icons/Assessmentdefault.svg",
          //       height: isMobile ? 20 : 30,
          //       width: isMobile ? 20 : 30,
          //       colorFilter: const ColorFilter.mode(
          //         AppColor.grey,
          //         BlendMode.srcIn,
          //       ),
          //     ),
          //   ),
          //   label: loc.vtTriage,
          // ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: isMobile
                  ? const EdgeInsets.all(4.0)
                  : const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                AppIcon.vtAvailabilityIcon,
                height: isMobile ? 20 : 30,
                width: isMobile ? 20 : 30,
                colorFilter: const ColorFilter.mode(
                  AppColor.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: loc.vtMarkMyAvailability,
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
        ],
      ),
    );
  }
}
