import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardBody extends StatelessWidget {
  const EyeBankDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 500,
        ),
      ),
    );
  }
}
