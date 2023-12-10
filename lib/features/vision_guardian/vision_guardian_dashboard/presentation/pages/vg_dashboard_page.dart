import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/presentation/pages/triage_page.dart';
import '../../../vision_guardian_home/presentation/pages/vg_home_page.dart';
import '../providers/vg_dashboard_provider.dart';
import '../widgets/vg_bottom_nav_bar.dart';

class VisionGuardianDashboardPage extends ConsumerWidget {
  const VisionGuardianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                     Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const TriagePage(),
                        )
                      );
                      break;
                    case 2:               
                      break;
                    case 3:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientNotificationPage(),
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
