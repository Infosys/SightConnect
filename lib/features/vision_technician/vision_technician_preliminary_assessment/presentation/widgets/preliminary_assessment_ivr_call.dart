import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

// class PreliminaryAssessmentIvrCall extends StatefulWidget {
//   PreliminaryAssessmentIvrCall({super.key});

//   @override
//   State<PreliminaryAssessmentIvrCall> createState() =>
//       _PreliminaryAssessmentIvrCallState();
// }

class PreliminaryAssessmentIvrCall extends StatelessWidget {
  final int isSelectedOption;
  final Function(int) onSelectedOptionChanged;

  const PreliminaryAssessmentIvrCall({
    super.key,
    required this.isSelectedOption,
    required this.onSelectedOptionChanged,
  });

  @override
  Widget build(BuildContext context) {
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
            "Are you on IVR Call?",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          ListTile(
            title: const Text('Yes'),
            leading: Radio(
              value: 1,
              groupValue: isSelectedOption,
              onChanged: (value) => onSelectedOptionChanged(1),
            ),
          ),
          ListTile(
            title: const Text('No'),
            leading: Radio(
              value: 2,
              groupValue: isSelectedOption,
              onChanged: (value) => onSelectedOptionChanged(2),
            ),
          ),
        ],
      ),
    );
  }
}
