import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class TriageTestCounterIndicator extends StatelessWidget {
  final int currentStep;
  const TriageTestCounterIndicator({
    super.key,
    required this.currentStep,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: AppColor.white,
      label: SizedBox(
        width: 32,
        child: Center(
          child: Text('$currentStep/3'),
        ),
      ),
    );
  }
}
