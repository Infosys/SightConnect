import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_doctor_card.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_input_tile.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_popup.dart';
import 'package:eye_care_for_all/features/patient/patient_appointment_booking/presentation/widgets/appointment_booking_remote_tele_consultation_switch.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientAppointmentBookingPage extends ConsumerWidget {
  const PatientAppointmentBookingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Appointment Booking',
        ),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppointmentBookingDoctorCard(
                doctorName: "Dr. John Doe",
                doctorSpeciality: "Eye Specialist",
                doctorImage: AppImages.doctor,
                hospialName: "LVP Eye Hospital, Guntur, Hyderabad",
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const AppointmentBookingRemoteTeleConsultationSwitch(
                label: "Remote Tele Consultation",
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const AppointmentBookingInputTile(
                title: "Slot Duration",
                defaultValue: "15 minutes",
                trailingIcon: Icons.keyboard_arrow_down,
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const AppointmentBookingInputTile(
                title: "Date",
                defaultValue: "12 Jul 2023",
                trailingIcon: Icons.calendar_month,
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const AppointmentBookingInputTile(
                title: "Reason for Appointment",
                defaultValue: "Tele Consultation for Eye Cateract Surgery",
                trailingIcon: Icons.timer,
                maxLine: 3,
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const AppointmentBookingPopUp();
                    },
                  );
                },
                child: const Text("Schedule Appointment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
