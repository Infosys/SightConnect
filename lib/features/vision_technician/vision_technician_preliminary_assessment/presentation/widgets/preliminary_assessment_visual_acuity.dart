import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/vision_technician_triage_provider.dart';

class PreliminaryAssessmentVisualAcuity extends HookConsumerWidget {
  const PreliminaryAssessmentVisualAcuity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var rightEyeController = useTextEditingController();
    var leftEyeController = useTextEditingController();
    var bothEyeController = useTextEditingController();
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
                  controller: rightEyeController,
                  onChanged: (value) {
                    ref.read(visionTechnicianTriageProvider).setRightEyeSight(double.parse(value));  
                  },
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
                  controller: leftEyeController,
                  onChanged: (value) {
                    ref.read(visionTechnicianTriageProvider).setLeftEyeSight(double.parse(value));  
                  },
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
                  controller: bothEyeController,
                  onChanged: (value) {
                    ref.read(visionTechnicianTriageProvider).setBothEyeSight(double.parse(value));  
                  },
                  onSubmitted: (value) {
                    ref.read(visionTechnicianTriageProvider).getVisionAcuityTumblingResponse();
                  
                  },
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
