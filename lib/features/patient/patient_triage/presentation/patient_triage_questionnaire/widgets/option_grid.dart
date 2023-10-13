import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class OptionGrid extends StatelessWidget {
  const OptionGrid({
    required this.question,
    this.onTap,
    super.key,
  });

  final List<Question> question;
  final Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: question.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            onTap?.call(index);
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: question[index].isAnswered
              //       ? AppColor.primary
              //       : AppColor.grey.withOpacity(0.5),
              //   width: 1,
              // ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                question[index].statement ?? "",
                textAlign: TextAlign.left,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 16,
                  // color: question[index].isAnswered
                  //     ? AppColor.primary
                  //     : AppColor.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
