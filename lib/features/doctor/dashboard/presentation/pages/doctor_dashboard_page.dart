import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/doctor/tissue_request/presentation/pages/doctor_tissue_request_form.dart';
import 'package:flutter/material.dart';

class DoctorDashBoardPage extends StatelessWidget {
  const DoctorDashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 2,
        title: Image.asset(
          AppImages.logo,
          height: 30,
        ),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.person))
        ],
      ),
      body: const DoctorTissueRequestForm(),
    );
  }
}
