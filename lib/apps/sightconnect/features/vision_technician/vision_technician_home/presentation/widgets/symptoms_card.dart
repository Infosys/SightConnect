/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SymptomsCard extends StatelessWidget {
  const SymptomsCard({
    super.key,
    required this.color,
    required this.value,
    required this.symptom,
  });
  final Color color;
  final double value;
  final String symptom;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            value.toInt().toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: isMobile ? 16 : 24,
              height: 1,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          const SizedBox(width: AppSize.ks),
          Text(
            symptom,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              height: 1,
              fontWeight: FontWeight.w400,
              fontSize: isMobile ? 10 : 12,
              color: AppColor.grey,
            ),
          )
        ],
      ),
    );
  }
}
