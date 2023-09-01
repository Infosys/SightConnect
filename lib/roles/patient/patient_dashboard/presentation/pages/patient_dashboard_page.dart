import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/widgets/patient_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDashboardPage extends ConsumerWidget {
  static const String routeName = '/patient-dashboard';
  const PatientDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(patientDashboardProvider);
    return Scaffold(
      bottomNavigationBar: PatientBottomNavBar(
        onTap: (index) => model.changeIndex(index),
        currentIndex: model.currentIndex,
      ),
      body: model.pages[model.currentIndex],
    );
  }
}
