import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/campaigns_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/discover_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/doctor_near_you_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/family_eye_health_score_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/patient_header.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/you_appointment_card_list.dart';
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
              DoctorNearYouList(),
              SizedBox(height: AppSize.kmheight),
              YourAppointmentCardList(),
              SizedBox(height: AppSize.kmheight),
              FamilyEyeHealthScoreList(),
              SizedBox(height: AppSize.kmheight),
              DiscoverCardList(),
              SizedBox(height: AppSize.kmheight),
              CampaginsList()
            ],
          ),
        ),
      ),
    );
  }
}
