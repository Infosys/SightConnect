import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_calendar.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_doctor_card.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_input_tile.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_remote_tele_consultation_switch.dart';

class PatientAppointmentSchedulePage extends ConsumerWidget {
  const PatientAppointmentSchedulePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: Text(
          'Appointment Booking',
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(
                AppSize.kspadding,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppointmentBookingDoctorCard(
                    doctorName: "Dr. John Doe",
                    doctorSpeciality: "Eye Specialist",
                    doctorImage: AppImages.doctor,
                    hospialName: "LVP Eye Hospital, Guntur, Hyderabad",
                  ),
                  SizedBox(
                    height: AppSize.kmheight,
                  ),
                  AppointmentBookingRemoteTeleConsultationSwitch(
                    label: "Remote Tele Consultation",
                  ),
                  SizedBox(
                    height: AppSize.kmheight,
                  ),
                  AppointmentBookingInputTile(
                    title: "Slot Suration",
                    defaultValue: "15 minutes",
                    trailingIcon: Icons.alarm,
                  ),
                  SizedBox(
                    height: AppSize.kmheight,
                  ),
                ],
              ),
            ),
            AppointmentBookingCalendar(),
          ],
        ),
      ),
    );
  }
}
