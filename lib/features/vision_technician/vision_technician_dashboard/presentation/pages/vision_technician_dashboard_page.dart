import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_search_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/pages/vision_technician_ivr_call_history_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/pages/vision_technician_mark_my_availability_page.dart';

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianDashboardPage extends ConsumerWidget {
  const VisionTechnicianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(getVTProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from VisionTechnicianDashboardPage ");
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: "You have been logged out");
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        });
      }
    });
    return ref.watch(getVTProfileProvider).when(
          data: (data) {
            return _content(context, ref);
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(body: Text("Error $error"));
          },
        );
  }

  Widget _content(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const VisionTechnicianHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.grey,
        unselectedLabelStyle: applyRobotoFont(fontSize: 10),
        selectedLabelStyle:
            applyRobotoFont(fontSize: 10, fontWeight: FontWeight.w600),
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PatientRegistrationMiniappPage(
                    actionType: MiniAppActionType.REGISTER,
                    displayName: "Register Patient",
                  ),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionTechnicianSearchPage(),
                ),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionTechnicianMarkMyAvailabilityPage(),
                ),
              );
              break;
            case 4:
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
            icon: Icon(
              Icons.home_outlined,
              size: Responsive.isMobile(context)
                  ? AppSize.kmheight * 1.8
                  : AppSize.kmheight * 2.5,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_add,
              size: Responsive.isMobile(context)
                  ? AppSize.kmheight * 1.8
                  : AppSize.kmheight * 2.5,
            ),
            label: 'Register Patient',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.perspective,
              size: Responsive.isMobile(context)
                  ? AppSize.kmheight * 1.8
                  : AppSize.kmheight * 2.5,
            ),
            label: 'Triage',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_add,
              size: Responsive.isMobile(context)
                  ? AppSize.kmheight * 1.8
                  : AppSize.kmheight * 2.5,
            ),
            label: 'Mark My Availability',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.phone,
              size: Responsive.isMobile(context)
                  ? AppSize.kmheight * 1.8
                  : AppSize.kmheight * 2.5,
            ),
            label: 'IVR Call History',
          ),
        ],
      ),
    );
  }
}
