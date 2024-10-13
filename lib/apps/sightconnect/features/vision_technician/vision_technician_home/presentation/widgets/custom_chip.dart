/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
  final String title;
  final Function(String type) onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(title);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppSize.ks / 2,
          vertical: AppSize.ks / 2,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.km,
          vertical: AppSize.ks,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.lightBlue : AppColor.white,
          border: Border.all(
            color: isSelected ? AppColor.primary : AppColor.grey,
          ),
          borderRadius: BorderRadius.circular(AppSize.kl / 2),
        ),
        child: Text(
          title,
          style: applyRobotoFont(fontSize: 14),
        ),
      ),
    );
  }
}
