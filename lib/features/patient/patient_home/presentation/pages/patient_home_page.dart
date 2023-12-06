import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_dashboard/presentation/providers/patient_dashboard_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/patient_home_page_app_bar.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_recent_services_card_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientHomePage extends ConsumerWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PatientHomePageAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
        },
        child: SingleChildScrollView(
          controller: ref.read(patientDashboardProvider).scrollController,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PatientHeader(),
              SizedBox(height: AppSize.kmheight),
              PriorityNotificationList(),
              SizedBox(height: AppSize.kmheight),
              MyConnectionsList(),
              SizedBox(height: AppSize.kmheight),
              RecentServicesCardList(),
              SizedBox(height: AppSize.kmheight),
              NearbyVisionCentersList(),
              SizedBox(height: AppSize.kmheight),
              HelplineCard(),
              SizedBox(height: AppSize.kmheight),
              InviteCard(),
              // const EyeCampsCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const GoodToKnowCardList(),
              // const SizedBox(height: AppSize.kmheight),
              // const CampaginsList(),
              SizedBox(height: AppSize.klheight * 4),
            ],
          ),
        ),
      ),
    );
  }
}
