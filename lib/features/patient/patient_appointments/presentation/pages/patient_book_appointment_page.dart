import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PatientBookAppointmentPage extends StatelessWidget {
  const PatientBookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
         extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: CustomAppbar(
        title: Text('Book Appointment'),
        centerTitle: false,
      ),
    );
  }
}
