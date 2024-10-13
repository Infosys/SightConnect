/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
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
