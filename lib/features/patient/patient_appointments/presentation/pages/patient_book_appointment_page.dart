import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/appointment_patient_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/book_appointment_patient_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/consultation_type.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/eye_problem_type.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientBookAppointmentPage extends ConsumerWidget {
  const PatientBookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: const CustomAppbar(
        title: Text('Book Appointment'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: AppSize.kmpadding,
          right: AppSize.kmpadding,
          top: AppSize.height(context) * 0.1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ref.watch(getPatientProfileProvider).when(data: (patient) {
              return BookAppointmentPatientSelector(
                patient: patient,
                relations:
                    patient.profile?.patient?.relatedParty?.reversed.toList() ??
                        [],
              );
            }, error: (e, s) {
              return Container();
            }, loading: () {
              return Container();
            }),
            const SizedBox(height: AppSize.klheight),
            const EyeProblemType(),
            const SizedBox(height: AppSize.klheight),
            const ConsultationType(),
          ],
        ),
      ),
    );
  }
}
