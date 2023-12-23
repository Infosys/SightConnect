import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentFilterCheckBox extends ConsumerStatefulWidget {
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
  ConsumerState<PreliminaryAssessmentFilterCheckBox> createState() =>
      _PreliminaryAssessmentFilterCheckBoxState();
}

class _PreliminaryAssessmentFilterCheckBoxState
    extends ConsumerState<PreliminaryAssessmentFilterCheckBox> {
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
                questions: widget.questions![index],
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

class QuestionTile extends HookConsumerWidget {
  const QuestionTile({super.key, required this.text, required this.questions});
  final text;
  final AnswerOptionModel? questions;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var checkBoxState = useState(false);
    int questionCode = questions?.id ?? 0;
    bool answer = checkBoxState.value;
    int score = questions?.answer?.answerItemWeight?.value?.toInt() ?? 0;
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
          if (checkBoxState.value == true) {
            answer = checkBoxState.value;
            ref
                .read(visionTechnicianTriageProvider)
                .addQuestionnaireAnswer(questionCode, answer, score);
          } else {
            ref
                .read(visionTechnicianTriageProvider)
                .removeQuestionnaireAnswer(questionCode);
          }
        },
      ),
    );
  }
}
