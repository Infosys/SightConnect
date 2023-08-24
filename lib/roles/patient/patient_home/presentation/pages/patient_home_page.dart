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
        child: Column(),
      ),
    );
  }
}
