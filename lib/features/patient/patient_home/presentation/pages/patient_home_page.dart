import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_recent_services_card_list.dart';
import 'package:eye_care_for_all/shared/widgets/app_bottom_nav_bar.dart';
import 'package:eye_care_for_all/shared/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

class PatientHomePage extends ConsumerStatefulWidget {
  const PatientHomePage({super.key});

  @override
  ConsumerState<PatientHomePage> createState() => _PatientHomePageState();
}

class _PatientHomePageState extends ConsumerState<PatientHomePage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      ref.read(patientHomeProvider).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PatientHomePageAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          controller: ref.read(patientDashboardProvider).scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const PatientHeader(),
              // const SizedBox(height: AppSize.kmheight),
              // PriorityNotificationList(),
              const SizedBox(height: AppSize.kmheight),
              const MyConnectionsList(),
              const SizedBox(height: AppSize.kmheight),
              const RecentServicesCardList(),
              const SizedBox(height: AppSize.kmheight),
              const NearbyVisionCentersList(),
              const SizedBox(height: AppSize.kmheight),
              const HelplineCard(helpLine: AppText.tollFreeNumber),
              const SizedBox(height: AppSize.kmheight),
              InviteCard(
                onPressed: () {
                  Share.share(
                    'check out my website https://example.com',
                    subject: 'Look what I made!',
                  );
                },
              ),
              // const EyeCampsCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const GoodToKnowCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const CampaginsList(),
              const SizedBox(height: AppSize.klheight * 4),
            ],
          ),
        ),
      ),
      endDrawer: const AppDrawer(),
      bottomNavigationBar: AppBottomNavBar(
        onSelected: (index) {
          ref.read(patientDashboardProvider).currentIndex = index;
        },
        selectedIndex: ref.watch(patientDashboardProvider).currentIndex,
      ),
    );
  }
}
