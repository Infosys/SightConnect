import 'package:eye_care_for_all/roles/patient/patient_services/presentation/widgets/patient_service_category.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientServicesPage extends StatefulWidget {
  const PatientServicesPage({Key? key}) : super(key: key);

  @override
  State<PatientServicesPage> createState() => _PatientServicesPageState();
}

class _PatientServicesPageState extends State<PatientServicesPage> {
  Map<String, List<String>> services = {
    "Patient Care": [
      "Buy Spectacles",
      "Reminders",
    ],
    "Remote Care": [
      "Eye Scan",
      "Eye Exercise",
      "Cataract Test",
    ],
    "Special Care": [
      "Keratoco nus",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Services",
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: services.keys
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: PatientServiceCategory(
                        title: e,
                        services: services[e]!,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
