import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
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
    final loc = context.loc!;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            loc.vtVisualAcuity,
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.km),
          Wrap(
            runSpacing: AppSize.ks,
            children: [
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context)
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  onChanged: (value) {
                    bool isNumeric =
                        RegExp(r'^[0-1](\.[0-9]{1,3})?$').hasMatch(value);
                    double? numericValue =
                        isNumeric ? double.tryParse(value) : null;
                    if (!isNumeric || numericValue == null) {
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
                    hintText: loc.vtRightEye,
                    error: refWatch.visualAcuityRightEyeValueEntered
                        ? null
                        : errorText(loc.vtInvalidValue),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.kl),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context)
                    : AppSize.width(context) * 0.2,
                child: TextField(
                  onChanged: (value) {
                    bool isNumeric =
                        RegExp(r'^[0-1](\.[0-9]{1,3})?$').hasMatch(value);
                    double? numericValue =
                        isNumeric ? double.tryParse(value) : null;
                    if (!isNumeric || numericValue == null) {
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
                    hintText: loc.vtLeftEye,
                    error: refWatch.visualAcuityLeftEyeValueEntered
                        ? null
                        : errorText(loc.vtInvalidValue),
                  ),
                ),
              ),
              const SizedBox(width: AppSize.kl),
              SizedBox(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context)
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
                    hintText: loc.vtBothEyes,
                    error: refWatch.visualAcuityBothEyeValueEntered
                        ? null
                        : errorText(loc.vtInvalidValue),
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

Widget errorText(String text) {
  return Text(
    text,
    style: applyRobotoFont(
      color: AppColor.red,
      fontSize: 14,
    ),
  );
}
