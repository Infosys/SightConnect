import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_services/presentation/widgets/patient_service_category.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientServicesPage extends ConsumerWidget {
  const PatientServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Map<String, List<String>> services = {
      "Patient Care": [
        "Buy Spectacles",
        "Reminders",
        "Appointment Booking",
      ],
      "Remote Care": [
        "Eye Scan",
        "Eye Exercise",
        "Cataract Test",
      ],
      "Special Care": [
        "Keratoconus",
        "Paediatric Eye Care",
        "Post Op Care",
        "Cataract Eyecare",
      ],
      "Guided Care": [
        "Schedule Booking",
        "Cataract Test",
        "Vision Screening",
        "Eye Scan",
      ],
      "Other Services": [
        "Diet Plan",
        "Calendar Check",
        "Doctors Nearby",
        "Hospitals Nearby"
      ],
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: services.keys
                .map((e) => PatientServiceCategory(
                      title: e,
                      services: services[e]!,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
