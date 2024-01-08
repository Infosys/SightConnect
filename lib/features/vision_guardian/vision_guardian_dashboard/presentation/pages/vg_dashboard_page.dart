import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/presentation/pages/vg_profile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/presentation/pages/triage_page.dart';
import '../../../vision_guardian_home/presentation/pages/vg_home_page.dart';
import '../providers/vg_dashboard_provider.dart';
import '../widgets/vg_bottom_nav_bar.dart';

class VisionGuardianDashboardPage extends ConsumerWidget {
  const VisionGuardianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(getVGProfileProvider, (previous, next) {
      if (next.hasError) {
        logger.d("Logged out from VisionGuardianDashboardPage ");
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
    return ref.watch(getVGProfileProvider).when(
          data: (data) {
            return _content(context, ref);
          },
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
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
                onSelected: (index) {
                  ref.read(visionGuardianDashboardProvider).currentIndex =
                      index;
                  switch (index) {
                    case 0:
                      break;
                    case 1:
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TriagePage(),
                      ));
                      break;
                    case 2:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientNotificationPage(),
                        ),
                      );
                      break;
                    case 3:
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
                selectedIndex: ref.watch(patientDashboardProvider).currentIndex,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
