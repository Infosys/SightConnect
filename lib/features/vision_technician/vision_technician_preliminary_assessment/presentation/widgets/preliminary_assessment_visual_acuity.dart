import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/vision_technician_triage_provider.dart';

class PreliminaryAssessmentVisualAcuity extends HookConsumerWidget {
  const PreliminaryAssessmentVisualAcuity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var rightEyeController = useTextEditingController();
    // var leftEyeController = useTextEditingController();
    // var bothEyeController = useTextEditingController();

    var refWatch = ref.watch(preliminaryAssessmentHelperProvider);

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
                  onChanged: (value) {
                    bool isNumeric =
                        RegExp(r'^[0-9]{1,2}\.?[0-9]{0,3}$').hasMatch(value);
                    double? numericValue =
                        isNumeric ? double.tryParse(value) : null;

                    if (!isNumeric ||
                        (numericValue != null && numericValue > 99.999)) {
                      ref
                          .read(preliminaryAssessmentHelperProvider)
                          .setVisualAcuityRightEyeValueEntered(false);
                      return;
                    }

                    ref
                        .read(preliminaryAssessmentHelperProvider)
                        .setVisualAcuityRightEyeValueEntered(value.isNotEmpty);
                    ref
                        .read(visionTechnicianTriageProvider)
                        .setRightEyeSight(double.parse(value));
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Right Eye",
                    error: refWatch.visualAcuityRightEyeValueEntered
                        ? null
                        : errorText(),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.4
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  onChanged: (value) {
                    bool isNumeric =
                        RegExp(r'^[0-9]{1,2}\.?[0-9]{0,3}$').hasMatch(value);
                    double? numericValue =
                        isNumeric ? double.tryParse(value) : null;

                    if (!isNumeric ||
                        (numericValue != null && numericValue > 99.999)) {
                      ref
                          .read(preliminaryAssessmentHelperProvider)
                          .setVisualAcuityLeftEyeValueEntered(false);
                      return;
                    }

                    ref
                        .read(preliminaryAssessmentHelperProvider)
                        .setVisualAcuityLeftEyeValueEntered(value.isNotEmpty);
                    ref
                        .read(visionTechnicianTriageProvider)
                        .setLeftEyeSight(double.parse(value));
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Left Eye",
                    error: refWatch.visualAcuityLeftEyeValueEntered
                        ? null
                        : errorText(),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.4
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  onChanged: (value) {
                    bool isNumeric =
                        RegExp(r'^[0-9]{1,2}\.?[0-9]{0,3}$').hasMatch(value);
                    double? numericValue =
                        isNumeric ? double.tryParse(value) : null;

                    if (!isNumeric ||
                        (numericValue != null && numericValue > 99.999)) {
                      ref
                          .read(preliminaryAssessmentHelperProvider)
                          .setVisualAcuityBothEyeValueEntered(false);
                      return;
                    }

                    ref
                        .read(preliminaryAssessmentHelperProvider)
                        .setVisualAcuityBothEyeValueEntered(value.isNotEmpty);
                    ref
                        .read(visionTechnicianTriageProvider)
                        .setBothEyeSight(double.parse(value));
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        AppSize.kmradius,
                      ),
                    ),
                    labelText: "Both Eye",
                    error: refWatch.visualAcuityBothEyeValueEntered
                        ? null
                        : errorText(),
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

Widget errorText() {
  return Text(
    "Invalid value",
    style: applyRobotoFont(
      color: AppColor.red,
      fontSize: 14,
    ),
  );
}
