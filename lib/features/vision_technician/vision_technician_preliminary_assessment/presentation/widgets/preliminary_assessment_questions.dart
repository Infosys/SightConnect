import 'package:collection/collection.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_filter_checkbox.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentQuestions extends HookConsumerWidget {
  const PreliminaryAssessmentQuestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var initiated = useState<bool>(false);

    return ref.watch(getTriageProvider).when(
      data: (data) {
        if (!initiated.value) {
          ref
              .watch(visionTechnicianTriageProvider)
              .setData(data, data.questionnaire?.questionnaireItem ?? []);
          initiated.value = true;
        }
        return AssessmentQuestionCard(
          questionnaire: data.questionnaire?.questionnaireItem ?? [],
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text("Something went wrong"),
              ),
              const SizedBox(
                height: AppSize.klheight,
              ),
              TextButton.icon(
                onPressed: () {
                  ref.invalidate(getTriageProvider);
                },
                icon: const Icon(Icons.refresh_outlined),
                label: const Text("Retry"),
              ),
            ],
          ),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}

class AssessmentQuestionCard extends StatelessWidget {
  const AssessmentQuestionCard({
    super.key,
    required this.questionnaire,
  });
  final List<QuestionnaireItemFHIRModel> questionnaire;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSize.kmpadding),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(AppSize.kmradius),
            boxShadow: const [
              BoxShadow(
                color: AppColor.lightGrey,
                blurRadius: AppSize.ksradius / 2,
                spreadRadius: AppSize.ksradius / 8,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Assessment Questions",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
              ...questionnaire.mapIndexed(
                (index, element) {
                  return PreliminaryAssessmentFilterCheckBox(
                    question: element,
                    index: index,
                    questionnaire: questionnaire,
                  );
                },
              ).toList(),
              // Wrap(
              //   runSpacing: AppSize.klheight,
              //   children: [
              //     PreliminaryAssessmentFilterCheckBox(
              //       heading: eyeSightProblems.text,
              //       includeInputBox: 1,
              //       questions: eyeSightProblemsQuestion,
              //     ),
              //     PreliminaryAssessmentFilterCheckBox(
              //       heading: eyeRelatedProblems.text,
              //       includeInputBox: 1,
              //       questions: eyeRelatedProblemsQuestion,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.klheight),
      ],
    );
  }
}
