import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_filter_checkbox.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentQuestions extends HookConsumerWidget {
  PreliminaryAssessmentQuestions({super.key});
  var recommendationsController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getTriageProvider).when(
      data: (data) {
        // switch (currentStep) {
        return AssessmentQuestionCard(
          questionnaire: data.questionnaire?.questionnaireItem ?? [],
        );
        // }
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(error.toString()),
                ),
                const SizedBox(
                  height: AppSize.klheight,
                ),
                TextButton.icon(
                  onPressed: () {
                    // ref.invalidate(getTriageProvider);
                  },
                  icon: const Icon(Icons.refresh_outlined),
                  label: const Text("Retry"),
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );

    // return}
  }
}

class AssessmentQuestionCard extends StatelessWidget {
  const AssessmentQuestionCard({super.key, required this.questionnaire});
  final List<QuestionnaireItemFHIRModel> questionnaire;
  @override
  Widget build(BuildContext context) {
    QuestionnaireItemFHIRModel eyeSightProblems = questionnaire[0];
    QuestionnaireItemFHIRModel eyeRelatedProblems = questionnaire[1];
    List<AnswerOptionModel>? eyeSightProblemsQuestion =
        eyeSightProblems.answerOption;
    List<AnswerOptionModel>? eyeRelatedProblemsQuestion =
        eyeRelatedProblems.answerOption;

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(AppSize.kmpadding),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(AppSize.kmradius),
            boxShadow: const [
              BoxShadow(
                color: AppColor.lightGrey, //New
                blurRadius: AppSize.ksradius / 2,
                spreadRadius: AppSize.ksradius / 8,
              )
            ],
          ),
          child: Column(
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
              Wrap(
                runSpacing: AppSize.klheight,
                children: [
                  PreliminaryAssessmentFilterCheckBox(
                    heading: eyeSightProblems.text,
                    includeInputBox: 1,
                    questions: eyeSightProblemsQuestion,
                  ),
                  PreliminaryAssessmentFilterCheckBox(
                    heading: eyeRelatedProblems.text,
                    includeInputBox: 1,
                    questions: eyeRelatedProblemsQuestion,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        // Container(
        //   width: double.infinity,
        //   padding: EdgeInsets.all(AppSize.kmpadding),
        //   decoration: BoxDecoration(
        //     color: AppColor.white,
        //     borderRadius: BorderRadius.circular(AppSize.kmradius),
        //     boxShadow: const [
        //       BoxShadow(
        //         color: AppColor.lightGrey, //New
        //         blurRadius: AppSize.ksradius / 2,
        //         spreadRadius: AppSize.ksradius / 8,
        //       )
        //     ],
        //   ),
        //   child: Wrap(
        //     runSpacing: AppSize.klheight,
        //     children: [
        //       PreliminaryAssessmentFilterCheckBox(
        //         itemName: "eyeIssueType",
        //         name: "Eye Issue Type",
        //         includeInputBox: 0,
        //       ),
        //       PreliminaryAssessmentFilterCheckBox(
        //         itemName: "eyeSpecialistDeals",
        //         name: "Refer To Eye Specailist Who Deals With",
        //         includeInputBox: 0,
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
