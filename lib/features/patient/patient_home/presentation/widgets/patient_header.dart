import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientHeader extends StatelessWidget {
  const PatientHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: appShadow(),
      ),
      height: Responsive.isMobile(context)
          ? AppSize.height(context) * 0.3
          : AppSize.height(context) * 0.3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.klradius),
            child: Image.asset(
              AppImages.patientCover,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cataract Prevalence and Its Associated Factors among Adult Aged 40 Years and above",
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.6
                        : AppSize.width(context) * 0.5,
                  ),
                  child: Text(
                    "Schematic presentation of sampling procedure on prevalence of cataract and associated factors",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.darkGrey,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Know More"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
