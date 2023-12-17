import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PreliminaryAssessmentFilterCheckBox extends StatefulWidget {
  final String? heading;
  final int includeInputBox;
  List<AnswerOptionModel>? questions;
  PreliminaryAssessmentFilterCheckBox({
    super.key,
    this.heading,
    required this.includeInputBox,
    required this.questions,
  });

  @override
  State<PreliminaryAssessmentFilterCheckBox> createState() =>
      _PreliminaryAssessmentFilterCheckBoxState();
}

class _PreliminaryAssessmentFilterCheckBoxState
    extends State<PreliminaryAssessmentFilterCheckBox> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.heading!,
          style: applyFiraSansFont(
            fontSize: 18,
            color: AppColor.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        Wrap(
          children: [
            for (int index = 0; index < widget.questions!.length; index++) ...[
              QuestionTile(
                text: widget.questions![index].answer!.answerString!,
              ),
            ],
            if (widget.includeInputBox == 1)
              Padding(
                padding: const EdgeInsets.only(left: AppSize.klpadding),
                child: SizedBox(
                  width: AppSize.width(context) * 0.2,
                  child: const TextField(
                    decoration: InputDecoration(labelText: "Others"),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class QuestionTile extends HookWidget {
  const QuestionTile({super.key, required this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    var checkBoxState = useState(false);

    return SizedBox(
      width: AppSize.width(context) * 0.4,
      child: CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          text,
          style: applyRobotoFont(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColor.grey,
          ),
        ),
        value: checkBoxState.value,
        onChanged: (bool? value) {
          checkBoxState.value = value!;
        },
      ),
    );
  }
}
