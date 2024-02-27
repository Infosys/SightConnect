import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/pages/vg_eye_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/data/models/vg_bottom_nav_items.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/pages/vg_profile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_guardian_home/presentation/pages/vg_home_page.dart';
import '../providers/vg_dashboard_provider.dart';
import '../widgets/vg_bottom_nav_bar.dart';

class VisionGuardianDashboardPage extends ConsumerWidget {
  const VisionGuardianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    ref.listen(getVGProfileProvider, (previous, next) {
      if (next.hasError) {
        ref.read(initializationProvider).logout().then((value) {
          Fluttertoast.showToast(msg: loc.vgLogoutMessage);
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginPage.routeName,
            (route) => false,
          );
        }).catchError((e) {
          logger.e(
              "Apologies, we encountered a logout error in the mobile app. from VisionGuardianDashboardPage : $e");
          Fluttertoast.showToast(msg: loc.vgLogoutErrorMessage);
        });
      }
    });
    return ref.watch(getVGProfileProvider).when(
          data: (data) {
            return _content(context, ref);
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
          error: (error, stackTrace) {
            return Scaffold(
              body: Text("Error $error"),
            );
          },
        );
  }

  _content(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          const VisionGuardianHomePage(),
          Visibility(
            visible: ref.watch(visionGuardianDashboardProvider).isVisible,
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: VisionGuardianBottomNavBar(
                onSelected: (id, index) async {
                  ref.read(visionGuardianDashboardProvider).currentIndex =
                      index;
                  switch (id) {
                    case VisionGuardianBottomNavItemId.home:
                      break;
                    case VisionGuardianBottomNavItemId.eye_assessment:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const VisionGuardianEyeAssessmentPage(),
                        ),
                      );
                      break;
                    case VisionGuardianBottomNavItemId.notifications:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientNotificationPage(),
                        ),
                      );
                      break;
                    case VisionGuardianBottomNavItemId.profile:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VgProfile(),
                        ),
                      );
                      break;
                    default:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AppDrawer(),
                        ),
                      );
                  }
                },
                selectedIndex:
                    ref.watch(visionGuardianDashboardProvider).currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
