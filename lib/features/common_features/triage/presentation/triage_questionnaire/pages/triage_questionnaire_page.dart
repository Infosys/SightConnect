import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/trige_questionnaire_other_symptoms_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/option_card.dart';

class TriageQuestionnairePage extends HookConsumerWidget {
  const TriageQuestionnairePage({
    required this.questionnaireSections,
    super.key,
  });
  final List<QuestionnaireItemFHIRModel> questionnaireSections;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = useState(GlobalKey<ScaffoldState>());
    var model = ref.watch(triageQuestionnaireProvider);
    model.selectedOptions.containsValue(true);
    model.getQuestionnaire(questionnaireSections);
    var pageController = usePageController();

    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: context.loc!.questionnaireExitDialog,
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: scaffoldKey.value,
        drawer: const TriageStepsDrawer(),
        appBar: CustomAppbar(
          leadingWidth: 60,
          titleSpacing: 0.0,
          centerTitle: false,
          leadingIcon: InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              scaffoldKey.value.currentState!.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(
                AppIcon.hamburgerIcon,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: AppSize.kmwidth),
              Text(
                context.loc!.stepNumber("1", "3"),
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: AppSize.kswidth),
              Text(
                AppLocalizations.of(context)!.questionnaireTitle,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: Consumer(
          builder: (context, ref, _) {
            return PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: model.questionnaireSections.length,
              itemBuilder: (context, index) {
                var question = model.questionnaireSections[index];
                var isLastQuestion =
                    (model.questionnaireSections.length - 1 == index);
                double weightage = _getWeightage(question.answerOption ?? []);

                if (index == 0) {
                  return Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.kmradius),
                      ),
                      elevation: AppSize.kselevation,
                      color: Colors.white,
                      child: SizedBox(
                        width: AppSize.width(context) * 0.8,
                        child: Padding(
                          padding: const EdgeInsets.all(AppSize.kmpadding),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Assessment",
                                  style: applyFiraSansFont(fontSize: 24),
                                ),
                                SvgPicture.asset(
                                  AppIcon.question,
                                  height: 32,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: AppSize.ksheight,
                            ),
                            Text(
                              question.text ?? '',
                              style: applyRobotoFont(fontSize: 14),
                            ),
                            const SizedBox(
                              height: AppSize.ksheight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    pageController.animateToPage(
                                      1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  child: Text(
                                    "Yes",
                                    style: applyRobotoFont(
                                        fontSize: 14, color: AppColor.primary),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    "No",
                                    style: applyRobotoFont(
                                      fontSize: 14,
                                      color: AppColor.primary,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      ),
                    ),
                  );
                } else {
                  return OptionCard(
                    question: question,
                    onNoButtonPressed: () {
                      model.addQuestionnaireAnswer(
                        question.id!,
                        false,
                        weightage.toInt(),
                      );
                      model.saveQuestionaireResponse();

                      if (isLastQuestion) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (_) =>
                                const TriageQuestionnaireOtherSymptomPage(),
                          ),
                        ).then(
                          (value) async {
                            await model.saveQuestionaireResponseToDB();
                            ref.read(triageStepperProvider).goToNextStep();
                          },
                        );
                      }
                    },
                    onYesButtonPressed: () {
                      model.addQuestionnaireAnswer(
                        question.id!,
                        true,
                        weightage.toInt(),
                      );
                      model.saveQuestionaireResponse();
                      if (isLastQuestion) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (_) =>
                                const TriageQuestionnaireOtherSymptomPage(),
                          ),
                        ).then(
                          (value) async {
                            await model.saveQuestionaireResponseToDB();
                            ref.read(triageStepperProvider).goToNextStep();
                          },
                        );
                      }
                    },
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }

  double _getWeightage(List<AnswerOptionModel> answerOption) {
    var weightage = 0.0;
    for (var answer in answerOption) {
      var answerString = answer.answer?.answerString?.toLowerCase() ?? "";
      if (answerString == "yes") {
        weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
      } else if (answerString == "no") {
        weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
      } else {
        weightage = 0;
      }
    }
    return weightage;
  }
}
