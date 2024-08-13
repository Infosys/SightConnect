import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_question_grid.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentQuestions extends HookConsumerWidget {
  const PreliminaryAssessmentQuestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var initiated = useState<bool>(false);
    final loc = context.loc!;

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
              Center(
                child: Text(loc.vtSomethingWentWrong),
              ),
              const SizedBox(
                height: AppSize.kl,
              ),
              TextButton.icon(
                onPressed: () {
                  ref.invalidate(getTriageProvider);
                },
                icon: const Icon(Icons.refresh_outlined),
                label: Text(loc.vtRetry),
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
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(AppSize.km),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(AppSize.km),
            boxShadow: applycustomShadow(),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loc.vtAssessmentQuestions,
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.ks),
              PreliminaryAssessmentQuestionGrid(questionnaire: questionnaire),
            ],
          ),
        ),
        const SizedBox(height: AppSize.kl),
      ],
    );
  }
}
