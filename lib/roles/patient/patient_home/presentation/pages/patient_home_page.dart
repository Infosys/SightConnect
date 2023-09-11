import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/campaigns_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/good_to_know_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/eye_camps_card_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/invite_others_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/my_connections_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/my_recent_services_card_list.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class PatientHomePage extends StatelessWidget {
  static const String routeName = '/patient-home';
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Eye Care for All",
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Theme.of(context).primaryColor,
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/doctor_2.png'),
            ),
          ),
          const SizedBox(
            width: AppSize.kswidth,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.kmpadding)
              : const EdgeInsets.all(AppSize.klpadding),
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
              EyeCampsCardList(),
              SizedBox(height: AppSize.kmheight),
              GoodToKnowCardList(),
              SizedBox(height: AppSize.kmheight),
              CampaginsList()
            ],
          ),
        ),
      ),
    );
  }
}
