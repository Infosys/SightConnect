import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/pages/patient_home_page.dart';
import 'package:eye_care_for_all/features/patient/patient_notification/presentation/pages/patient_notification_page.dart';
import 'package:eye_care_for_all/features/patient/patient_services/presentation/pages/patient_services_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/pages/patient_triage_page.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDashboardPage extends ConsumerWidget {
  const PatientDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          const PatientHomePage(),
          Visibility(
            visible: ref.watch(patientDashboardProvider).isVisible,
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AppBottomNavBar(
                onSelected: (index) {
                  ref.read(patientDashboardProvider).currentIndex = index;
                  switch (index) {
                    case 0:
                      break;
                    case 1:
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return const PatientServicesPage();
                        },
                      );
                      break;
                    case 2:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientTriagePage(),
                        ),
                      );

                      break;
                    case 3:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PatientNotificationPage(),
                        ),
                      );
                      break;
                    case 4:
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AppDrawer(),
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
