import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/enums/questionnaire_type.dart';

class PreliminaryAssessmentQuestionGrid extends HookConsumerWidget {
  final List<QuestionnaireItemFHIRModel> questionnaire;

  const PreliminaryAssessmentQuestionGrid({
    super.key,
    required this.questionnaire,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> widgets = [];
    List<Widget> options = [];

    for (var i = 0; i < questionnaire.length; i++) {
      if (questionnaire[i].type == QuestionnaireType.Group) {
        if (options.isNotEmpty) {
          widgets.add(
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
              childAspectRatio: Responsive.isMobile(context) ? 5 : 5,
              children: List.from(options),
            ),
          );
          options = [];
        }

        widgets.add(Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questionnaire[i].shortText ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: AppSize.km),
          ],
        ));
      } else if (questionnaire[i].type == QuestionnaireType.String) {
        options.add(
          TextField(
            onChanged: (value) {
              ref
                  .read(visionTechnicianTriageProvider)
                  .addQuestionnaireAnswer(questionnaire[i].id, value);
            },
            decoration: const InputDecoration(hintText: "Others"),
          ),
        );
      } else {
        options.add(QuestionTile(question: questionnaire[i]));
      }
    }

    if (options.isNotEmpty) {
      widgets.add(
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
          childAspectRatio: Responsive.isMobile(context) ? 5 : 5,
          children: List.from(options),
        ),
      );
    }

    return Column(
      children: widgets,
    );
  }
}

class QuestionTile extends HookConsumerWidget {
  const QuestionTile({
    super.key,
    required this.question,
  });

  final QuestionnaireItemFHIRModel? question;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var checkBoxState = useState(false);
    final isMobile = Responsive.isMobile(context);

    return CheckboxListTile(
      onChanged: (value) {
        checkBoxState.value = value!;
        final provider = ref.read(visionTechnicianTriageProvider);
        if (checkBoxState.value == true) {
          provider.addQuestionnaireAnswer(question?.id, "Yes");
        } else {
          provider.removeQuestionnaireAnswer(question?.id);
        }
      },
      title: Text(
        question?.shortText?.toString() ?? "",
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: applyFiraSansFont(
          fontSize: isMobile ? 14 : 18,
          color: AppColor.black,
          fontWeight: FontWeight.w400,
        ),
      ),
      value: checkBoxState.value,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: AppColor.primary,
      checkColor: AppColor.white,
      secondary: IconButton(
        icon: Icon(
          Icons.info_outline,
          size: isMobile ? 16 : 24,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Text(
                          question?.text ?? "",
                          style: applyFiraSansFont(
                            fontSize: isMobile ? 14 : 16,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      Visibility(
                        visible:
                            (question?.relatedImage?.first.url?.isNotEmpty ??
                                false),
                        child: AppNetworkImage(
                          height: isMobile
                              ? AppSize.height(context) * 0.4
                              : AppSize.height(context) * 0.6,
                          width: isMobile
                              ? AppSize.height(context) * 0.4
                              : AppSize.height(context) * 0.6,
                          shapeCircle: false,
                          imageUrl: question!.relatedImage!.first.url!,
                        ),
                      ),
                    ],
                  ),
                  actions: const [],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
