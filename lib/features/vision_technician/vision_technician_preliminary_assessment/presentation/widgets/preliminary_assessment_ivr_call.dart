import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PreliminaryAssessmentIvrCall extends HookWidget {
  final Function(String) onSelectedOptionChanged;
  final String intialValue;

  const PreliminaryAssessmentIvrCall({
    super.key,
    required this.onSelectedOptionChanged,
    required this.intialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      padding: const EdgeInsets.all(AppSize.kl),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Are you on IVR Call?",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                value: "Yes",
                groupValue: intialValue,
                onChanged: (value) {
                  onSelectedOptionChanged("Yes");
                },
              ),
              const Text('Yes'),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                value: "No",
                groupValue: intialValue,
                onChanged: (value) {
                  onSelectedOptionChanged("No");
                },
              ),
              const Text('No'),
            ],
          ),
        ],
      ),
    );
  }
}
