import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/data/model/triage_question.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OptionGrid extends StatelessWidget {
  const OptionGrid({
    required this.symptoms,
    this.onTap,
    super.key,
  });

  final List<TriageQuestionResponse> symptoms;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: symptoms.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            onTap?.call(index);
          },
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: symptoms[index].isAnswered
                    ? AppColor.primary
                    : AppColor.grey.withOpacity(0.5),
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                symptoms[index].answer,
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  color: symptoms[index].isAnswered
                      ? AppColor.primary
                      : AppColor.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
