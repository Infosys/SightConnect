import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../data/models/User_details_model.dart';
import '../instruction_slides/scan_eye_homepage.dart';

class EyeScanHomePage extends StatelessWidget {
  static String routeName = "/eyeScanHomePage";
  const EyeScanHomePage({
    Key? key,
    this.userDetails,
  }) : super(key: key);
  final UserDetails? userDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFF),
      appBar: const CustomAppBar(
        title: "Steps to do the retinal scanning",
      ),
      body: InstructionSlides(
        userDetails: userDetails,
      ),
    );
  }
}
