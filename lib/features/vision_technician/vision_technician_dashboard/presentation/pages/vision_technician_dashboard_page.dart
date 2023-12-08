import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianDashboardPage extends ConsumerWidget {
  const VisionTechnicianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionTechnicianDashboardProvider);
    return Scaffold(
      body: model.pages[model.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                ref
                    .read(visionTechnicianDashboardProvider.notifier)
                    .changeIndex(0);
              },
              icon: const Icon(
                Icons.home_outlined,
                size: AppSize.kmheight * 2,
              ),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                ref
                    .read(visionTechnicianDashboardProvider.notifier)
                    .changeIndex(1);
              },
              icon: const Icon(
                CupertinoIcons.person_add,
                size: AppSize.kmheight * 2,
              ),
            ),
            label: 'Register Patient',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                ref
                    .read(visionTechnicianDashboardProvider.notifier)
                    .changeIndex(2);
              },
              icon: const Icon(
                CupertinoIcons.person_add,
                size: AppSize.kmheight * 2,
              ),
            ),
            label: 'Mark My Availability',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                ref
                    .read(visionTechnicianDashboardProvider.notifier)
                    .changeIndex(3);
              },
              icon: const Icon(
                CupertinoIcons.phone,
                size: AppSize.kmheight * 2,
              ),
            ),
            label: 'IVR Call History',
          ),
        ],
        currentIndex: model.currentIndex,
        onTap: (index) {
          // print(index);
        },
      ),
    );
  }
}
