import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PreliminaryAssessmentRecommendation extends StatefulWidget {
  const PreliminaryAssessmentRecommendation({super.key});

  @override
  State<PreliminaryAssessmentRecommendation> createState() =>
      _PreliminaryAssessmentRecommendationState();
}

class _PreliminaryAssessmentRecommendationState
    extends State<PreliminaryAssessmentRecommendation> {
  int _selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.klpadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.vtRecommendation,
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          ListTile(
            title: Text(loc.vtVisitPrimaryCenter),
            leading: Radio(
              value: 1,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(
                  () {
                    _selectedOption = value!;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: Text(loc.vtVisitSecondaryCenter),
            leading: Radio(
              value: 2,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(
                  () {
                    _selectedOption = value!;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: Text(loc.vtVisitTertiaryCenter),
            leading: Radio(
              value: 3,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(
                  () {
                    _selectedOption = value!;
                  },
                );
              },
            ),
          ),
          ListTile(
            title: Text(loc.vtVisitCenterOfExcellence),
            leading: Radio(
              value: 4,
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(
                  () {
                    _selectedOption = value!;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
