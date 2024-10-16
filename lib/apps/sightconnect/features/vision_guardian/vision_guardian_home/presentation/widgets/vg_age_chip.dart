/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VGAgeChip extends StatelessWidget {
  const VGAgeChip({
    super.key,
    required this.value,
    required this.years,
    required this.color,
  });
  final String value;
  final String years;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: applyFiraSansFont(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        ),
        Text(
          years,
          style: applyRobotoFont(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColor.grey,
          ),
        ),
      ],
    );
  }
}
