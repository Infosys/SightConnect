import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/pages/vision_technician_home_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/pages/vision_technician_ivr_call_history_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/pages/vision_technician_mark_my_availability_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianDashboardPage extends ConsumerWidget {
  const VisionTechnicianDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: const VisionTechnicianHomePage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0:
              break;
            case 1:
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionTechnicianPreliminaryAssessmentPage(),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: AppSize.kmheight * 2,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_add,
              size: AppSize.kmheight * 2,
            ),
            label: 'Register Patient',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.perspective,
              size: AppSize.kmheight * 2,
            ),
            label: 'Triage',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_add,
              size: AppSize.kmheight * 2,
            ),
            label: 'Mark My Availability',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.phone,
              size: AppSize.kmheight * 2,
            ),
            label: 'IVR Call History',
          ),
        ],
      ),
    );
  }
}
