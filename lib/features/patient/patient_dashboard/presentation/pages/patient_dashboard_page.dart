import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDashboardPage extends ConsumerWidget {
  const PatientDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          ref
              .read(patientDashboardProvider)
              .pages[ref.watch(patientDashboardProvider).currentIndex],
          Visibility(
            visible: ref.watch(patientDashboardProvider).currentIndex != 4,
            child: Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: AppBottomNavBar(
                onSelected: (index) {
                  ref.read(patientDashboardProvider).changeIndex(index);
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
