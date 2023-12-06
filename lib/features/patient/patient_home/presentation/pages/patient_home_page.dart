import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/provider/patient_profile_provider.dart';
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
    var model = ref.watch(patientProfileProvider);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PatientHomePageAppBar(
        patientProfileImage: model.patient.profile?.patient?.profilePhoto ??
            'assets/images/user.png',
      ),
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
              const SizedBox(height: AppSize.kmheight),
              const PriorityNotificationList(),
              const SizedBox(height: AppSize.kmheight),
              MyConnectionsList(
                connectionsList:
                    model.patient.profile?.patient?.relatedParty ?? [],
              ),
              const SizedBox(height: AppSize.kmheight),
              const RecentServicesCardList(),
              const SizedBox(height: AppSize.kmheight),
              const NearbyVisionCentersList(),
              const SizedBox(height: AppSize.kmheight),
              const HelplineCard(),
              const SizedBox(height: AppSize.kmheight),
              const InviteCard(),
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
    );
  }
}
