import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/appointment_date_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/appointment_patient_selector.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/consultation_type.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/presentation/widgets/eye_problem_type.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_images.dart';
import '../../../../../shared/theme/text_theme.dart';

class PatientBookAppointmentPage extends HookConsumerWidget {
  const PatientBookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.scaffoldBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
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
                return AppointmentPatientSelector(
                  patient: patient,
                  relations: patient.profile?.patient?.relatedParty?.reversed
                          .toList() ??
                      [],
                  enableAllButton: false,
                  isAddFamilyEnabled: true,
                );
              }, error: (e, s) {
                return Container();
              }, loading: () {
                return Container();
              }),
              const SizedBox(height: AppSize.klheight),
              const EyeProblemType(),
              const SizedBox(height: AppSize.klheight),
              Text(
                "Consultation Type",
                style: applyFiraSansFont(fontSize: 18),
              ),
              const ConsultationType(),
              const SizedBox(height: AppSize.klheight),
              const AppointmentDateSelector(),
            ],
          ),
        ),
      ),
    );
  }
}
