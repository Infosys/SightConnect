import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PreliminaryAssessmentVisualAcuity extends StatelessWidget {
  const PreliminaryAssessmentVisualAcuity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.kmradius),
        boxShadow: const [
          BoxShadow(
            color: AppColor.lightGrey,
            blurRadius: AppSize.ksradius / 2,
            spreadRadius: AppSize.ksradius / 8,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Visual Acuity",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.kmheight),
          Wrap(
            children: [
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.4
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Right Eye",
                  ),
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.4
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Left Eye",
                  ),
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.4
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Both Eye",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
