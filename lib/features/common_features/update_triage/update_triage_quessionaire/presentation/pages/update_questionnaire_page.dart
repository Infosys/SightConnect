import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_type.dart';
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

import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../../shared/widgets/app_toast.dart';

var updatequestionnaireIndexProvider =
    StateProvider.autoDispose<int>((ref) => 1);

class UpdateTriageQuestionnairePage extends HookConsumerWidget {
  const UpdateTriageQuestionnairePage({
    required this.reportId,
    super.key,
  });
  final int reportId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = useState(GlobalKey<ScaffoldState>());
    var model = ref.watch(updateTriageQuestionnaireProvider);
    model.selectedOptions.containsValue(true);
    var pageController = usePageController();

    final loc = context.loc!;

    return TraceableWidget(
      actionName: 'UpdateTriageQuestionnairePage',
      child: Scaffold(
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
        body: model.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Consumer(
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
                        // (double, int) record =
                        //     _getWeightage(question.answerOption ?? []);
                        // double weightage = record.$1;
                        // int answerCode = record.$2;

                        Map<String, Map<String, int>> finalValueMap =
                            _getWeightageAnswerCode(
                                question.answerOption ?? []);

                        if (question.type == QuestionnaireType.Group) {
                          return Center(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.kmradius),
                              ),
                              elevation: AppSize.kselevation,
                              color: Colors.white,
                              child: SizedBox(
                                width: AppSize.width(context) * 0.8,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(AppSize.kmpadding),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              loc.eyeAssessmentPopUpHeading,
                                              style: applyFiraSansFont(
                                                  fontSize: 24),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            TextButton(
                                              onPressed: () async {
                                                if (index == 0) {
                                                  Navigator.of(context).pop();
                                                } else {
                                                  int groupSectionCount = 0;
                                                  while (index <
                                                          model
                                                              .questionnaireSections
                                                              .length &&
                                                      (groupSectionCount == 0 ||
                                                          model
                                                                  .questionnaireSections[
                                                                      index]
                                                                  .type !=
                                                              QuestionnaireType
                                                                  .Group)) {
                                                    index++;
                                                    groupSectionCount++;
                                                  }
                                                  if (index ==
                                                      model
                                                          .questionnaireSections
                                                          .length) {
                                                    model
                                                        .saveQuestionaireResponse();
                                                    await updateTriage(
                                                        context, ref);
                                                  } else {
                                                    index--;
                                                    pageController
                                                        .animateToPage(
                                                      index + 1,
                                                      duration: const Duration(
                                                          milliseconds: 80),
                                                      curve: Curves.easeIn,
                                                    );
                                                  }
                                                }
                                              },
                                              child: Text(
                                                loc.noButton,
                                                style: applyRobotoFont(
                                                  fontSize: 14,
                                                  color: AppColor.primary,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                pageController.animateToPage(
                                                  index + 1,
                                                  duration: const Duration(
                                                      milliseconds: 80),
                                                  curve: Curves.easeIn,
                                                );
                                              },
                                              child: Text(
                                                loc.yesButton,
                                                style: applyRobotoFont(
                                                    fontSize: 14,
                                                    color: AppColor.primary),
                                              ),
                                            ),
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          );
                        } else if (question.type == QuestionnaireType.Choice) {
                          return UpdateOptionCard(
                            totalGroupQuestion: model.totalGroupQuestion(),
                            total: model.questionnaireSections.length,
                            index: ref
                                .watch(
                                    updatequestionnaireIndexProvider.notifier)
                                .state,
                            question: question,
                            onNoButtonPressed: () {
                              ref
                                  .read(
                                      updatequestionnaireIndexProvider.notifier)
                                  .state++;

                              model.addQuestionnaireAnswer(
                                question.id!,
                                "No",
                                _getAnswerWeightage(finalValueMap, "No")
                                    .toInt(),
                                _getAnswerCode(finalValueMap, "No"),
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
                            onYesButtonPressed: () async {
                              ref
                                  .read(
                                      updatequestionnaireIndexProvider.notifier)
                                  .state++;

                              model.addQuestionnaireAnswer(
                                question.id!,
                                "Yes",
                                _getAnswerWeightage(finalValueMap, "Yes")
                                    .toInt(),
                                _getAnswerCode(finalValueMap, "Yes"),
                              );

                              if (isLastQuestion) {
                                model.saveQuestionaireResponse();
                                await updateTriage(context, ref);
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
                            onSubmitted: (String value) async {
                              if (value.isNotEmpty) {
                                model.addQuestionnaireAnswer(
                                  question.id!,
                                  value,
                                  0,
                                  0,
                                );
                              }
                              if (isLastQuestion) {
                                model.saveQuestionaireResponse();
                                await updateTriage(context, ref);
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
                          return Text(loc.eyeAssessmentUnsupportedQuestion);
                        }
                      });
                },
              ),
      ),
    );
  }

  Future<void> updateTriage(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);

    var response = await ref
        .read(updateTriageQuestionnaireProvider)
        .updateTriage(reportId);

    response.fold((failure) {
      AppToast.showToast(context, context.loc!.somethingWentWrong,
          isError: true);
      // context.scaffoldMessenger.showSnackBar(
      //   SnackBar(
      //     content: Text(context.loc!.somethingWentWrong),
      //   ),
      // );
    }, (result) {
      AppToast.showToast(context, context.loc!.triageUpdatedSuccessfully,
          isSuccess: true);
      // context.scaffoldMessenger.showSnackBar(
      //    SnackBar(
      //     content: Text(context.loc!.triageUpdatedSuccessfully),
      //   ),
      // );
    });
    navigator.pop();
  }

  // (double, int) _getWeightage(List<AnswerOptionModel> answerOption) {
  //   double weightage = 0.0;
  //   int answerCode = 0;
  //   for (var answer in answerOption) {
  //     var answerString = answer.answer?.answerString?.toLowerCase() ?? "";
  //     if (answerString == "yes") {
  //       weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
  //       answerCode = answer.answer?.id ?? 0;
  //     } else if (answerString == "no") {
  //       weightage = answer.answer?.answerItemWeight?.value ?? 0.0;
  //       answerCode = answer.answer?.id ?? 0;
  //     } else {
  //       weightage = 0;
  //       answerCode = 0;
  //     }
  //   }
  //   return (weightage, answerCode);
  // }

  Map<String, Map<String, int>> _getWeightageAnswerCode(
      List<AnswerOptionModel> answerOption) {
    Map<String, Map<String, int>> finalValueMap = {};

    for (AnswerOptionModel answer in answerOption) {
      Map<String, int> valueMap = {};
      String answerString = answer.answer?.answerString?.toLowerCase() ?? "";
      int weightage = answer.answer?.answerItemWeight?.value?.toInt() ?? 0;
      int answerCode = answer.answer?.id ?? 0;
      valueMap["weightage"] = weightage;
      valueMap["answerCode"] = answerCode;

      finalValueMap[answerString] = valueMap;
    }

    logger.d({"finalvalueMaparra": finalValueMap});
    return finalValueMap;
  }

  int _getAnswerWeightage(
      Map<String, Map<String, int>> finalValueMap, String answer) {
    String answerString = answer.toLowerCase();
    int value = finalValueMap[answerString]?["weightage"] ?? 0;
    return value;
  }

  int _getAnswerCode(
      Map<String, Map<String, int>> finalValueMap, String answer) {
    String answerString = answer.toLowerCase();
    return finalValueMap[answerString]?["answerCode"] ?? 0;
  }
}
