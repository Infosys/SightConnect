import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/provider/update_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/widgets/update_option_card.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/widgets/update_triage_text_type_quesion.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//from triage
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';

class UpdateTriageQuestionnairePage extends HookConsumerWidget {
  const UpdateTriageQuestionnairePage({
    required this.reportId,
    super.key,
  });
  final int reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var scaffold = ScaffoldMessenger.of(context);

    void updateTriage() async {
      var response = await ref
          .read(updateTriageQuestionnaireProvider)
          .updateTriage(reportId);

      logger.f("Update Response: $response");

      response.fold((l) {
        scaffold.showSnackBar(
          const SnackBar(
            content: Text("Something went wrong"),
          ),
        );
      }, (r) {
        scaffold.showSnackBar(
          const SnackBar(
            content: Text("Triage Updated Successfully"),
          ),
        );
      });
      Navigator.of(context).pop();
    }

    final scaffoldKey = useState(GlobalKey<ScaffoldState>());
    var model = ref.watch(updateTriageQuestionnaireProvider);
    model.selectedOptions.containsValue(true);
    List<QuestionnaireItemFHIRModel> quessionaire = ref
            .read(getTriageProvider)
            .asData
            ?.value
            .questionnaire!
            .questionnaireItem ??
        [];
    ;
    model.getQuestionnaire(quessionaire);
    var pageController = usePageController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      key: scaffoldKey.value,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.loc!.questionnaireTitle,
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
              logger.f("index $index");
              var question = model.questionnaireSections[index];
              var isLastQuestion =
                  (model.questionnaireSections.length - 1 == index);
              (double, int) record = _getWeightage(question.answerOption ?? []);
              double weightage = record.$1;
              int answerCode = record.$2;

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
                                    duration: const Duration(milliseconds: 500),
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
                if (question.type == QuestionnaireType.Choice) {
                  return UpdateOptionCard(
                    question: question,
                    onNoButtonPressed: () {
                      model.addQuestionnaireAnswer(
                        question.id!,
                        "No",
                        weightage.toInt(),
                        answerCode,
                      );
                      if (isLastQuestion) {
                        model.saveQuestionaireResponse();
                      } else {
                        pageController.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    onYesButtonPressed: () {
                      model.addQuestionnaireAnswer(
                        question.id!,
                        "Yes",
                        weightage.toInt(),
                        answerCode,
                      );

                      if (isLastQuestion) {
                        model.saveQuestionaireResponse();
                        updateTriage();
                      } else {
                        pageController.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  );
                } else if (question.type == QuestionnaireType.String) {
                  return UpdateTriageTextTypeQuestion(
                    question: question,
                    onSubmitted: (String value) {
                      model.addQuestionnaireAnswer(
                        question.id!,
                        value,
                        0,
                        0,
                      );
                      if (isLastQuestion) {
                        model.saveQuestionaireResponse();
                        updateTriage();
                      } else {
                        pageController.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                    onCancle: () {
                      if (isLastQuestion) {
                        model.saveQuestionaireResponse();
                        updateTriage();
                      } else {
                        pageController.animateToPage(
                          index + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }
                    },
                  );
                } else {
                  return const Text("Question Not Supported Yet");
                }
              }
            },
          );
        },
      ),
    );
  }

  (double, int) _getWeightage(List<AnswerOptionModel> answerOption) {
    double weightage = 0.0;
    int answerCode = 0;
    for (var answer in answerOption) {
      var answerString = answer.answer?.answerString?.toLowerCase() ?? "";
      if (answerString == "yes") {
        weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
        answerCode = answer.answer?.id ?? 0;
      } else if (answerString == "no") {
        weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
        answerCode = answer.answer?.id ?? 0;
      } else {
        weightage = 0;
        answerCode = 0;
      }
    }
    return (weightage, answerCode);
  }
}
