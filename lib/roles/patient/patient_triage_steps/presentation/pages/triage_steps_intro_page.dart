import 'package:eye_care_for_all/roles/patient/patient_appointment_booking/presentation/pages/patient_appointment_booking_page.dart';
import 'package:flutter/material.dart';

class TriageStepsIntroPage extends StatelessWidget {
  const TriageStepsIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Triage Steps'),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 80,
        ),
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => const PatientAppointmentBookingPage(),
            //     fullscreenDialog: true,
            //   ),
            // );
          },
          child: const Text('Next'),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
