import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/enums/questionnaire_type.dart';

class PreliminaryAssessmentFilterCheckBox extends ConsumerStatefulWidget {
  final QuestionnaireItemFHIRModel question;
  final int index;
  final List<QuestionnaireItemFHIRModel> questionnaire;
  const PreliminaryAssessmentFilterCheckBox({
    super.key,
    required this.question,
    required this.index,
    required this.questionnaire,
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
        widget.questionnaire[widget.index].type == QuestionnaireType.Group
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.question.text!.toString(),
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                ],
              )
            : widget.questionnaire[widget.index].type ==
                    QuestionnaireType.String
                ? Padding(
                    padding: const EdgeInsets.only(left: AppSize.klpadding),
                    child: SizedBox(
                      width: AppSize.width(context) * 0.2,
                      child: TextField(
                        onChanged: (value) {
                          ref
                              .read(visionTechnicianTriageProvider)
                              .addQuestionnaireAnswer(
                                  widget.question.id, value);
                          
                        },
                        decoration: const InputDecoration(labelText: "Others"),
                      ),
                    ),
                  )
                : Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionTile(question: widget.question),
                      Text(
                        widget.question.text!.toString(),
                        style: applyFiraSansFont(
                          fontSize: 18,
                          color: AppColor.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
      ],
    );
  }
}

class QuestionTile extends HookConsumerWidget {
  const QuestionTile({super.key, required this.question});

  final QuestionnaireItemFHIRModel? question;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var checkBoxState = useState(false);
    // int questionCode = questions?.id ?? 0;
    // bool answer = checkBoxState.value;
    // int score = questions?.answer?.answerItemWeight?.value?.toInt() ?? 0;
    return Checkbox(
      // controlAffinity: ListTileControlAffinity.leading,

      // title: Text(
      //   text,
      //   style: applyRobotoFont(
      //     fontSize: 15,
      //     fontWeight: FontWeight.w500,
      //     color: AppColor.grey,
      //   ),
      // ),
      value: checkBoxState.value,
      onChanged: (bool? value) {
        checkBoxState.value = value!;

        if (checkBoxState.value == true) {
          ref
              .read(visionTechnicianTriageProvider)
              .addQuestionnaireAnswer(question?.id, "Yes");
        } else {
          ref
              .read(visionTechnicianTriageProvider)
              .removeQuestionnaireAnswer(question?.id);
        }
      },
    );
  }
}
