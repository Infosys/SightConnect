import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/doctor_near_you_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/priority_notification_list.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/you_appointment_card_list.dart';
import 'package:flutter/material.dart';

class PatientHomePage extends StatelessWidget {
  static const String routeName = '/patient-home';
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Home'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.kspadding),
          child: Column(
            children: [
              PriorityNotificationList(),
              SizedBox(height: AppSize.kmheight),
              DoctorNearYouList(),
              SizedBox(height: AppSize.kmheight),
              YourAppointmentCardList(),
            ],
          ),
        ),
      ),
    );
  }
}
