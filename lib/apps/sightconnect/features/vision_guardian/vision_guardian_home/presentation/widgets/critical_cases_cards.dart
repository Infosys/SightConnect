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

class CriticalCasesCard extends StatelessWidget {
  const CriticalCasesCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        left: 14,
      ),
      color: AppColor.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.ks),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.ks),
        child: Container(
          padding: const EdgeInsets.all(AppSize.ks),
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.9
              : AppSize.width(context) * 0.5,
          color: AppColor.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: AppColor.grey.withOpacity(0.8),
                child: Image.asset(
                  data["image"] ?? "",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: AppSize.ks),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.74
                        : AppSize.width(context) * 0.38,
                    child: Row(
                      children: [
                        Text(
                          data["name"],
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          data["urgency"],
                          style: applyRobotoFont(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColor.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.ks),
                  SizedBox(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.74
                        : AppSize.width(context) * 0.38,
                    child: Row(
                      children: [
                        Text(
                          data["gender"] + ', ' + data["age"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          data["reportDate"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSize.ks / 3),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.ks),
                  SizedBox(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.74
                        : AppSize.width(context) * 0.38,
                    child: Row(
                      children: [
                        Text(
                          data["assessmentId"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          data["reportTime"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSize.ks / 3),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
