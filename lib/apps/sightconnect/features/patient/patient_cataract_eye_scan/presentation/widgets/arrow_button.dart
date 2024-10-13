/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.activeIndex,
  });
  final VoidCallback onTap;
  final IconData icon;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(AppSize.ks),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: (activeIndex == 0 && icon == Icons.arrow_back_ios)
                ? AppColor.grey
                : AppColor.primary,
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 20,
            color: (activeIndex == 0 && icon == Icons.arrow_back_ios)
                ? AppColor.grey
                : AppColor.primary,
          ),
        ),
      ),
    );
  }
}
