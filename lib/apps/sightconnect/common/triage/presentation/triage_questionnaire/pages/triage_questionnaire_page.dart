/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/questionnaire_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_questionnaire/widgets/triage_text_type_question.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/helpers/show_feedback_bottom_sheet.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_pop_up_menu.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../triage_member_selection/widget/triage_steps_drawer.dart';
import '../widgets/option_card.dart';

var questionnaireIndexProvider = StateProvider.autoDispose<int>((ref) => 1);

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
    var yesButtonPressed = useState<bool>(false);
    var noButtonPressed = useState<bool>(false);

    final loc = context.loc!;

    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => TriageExitAlertBox(
            content: context.loc!.questionnaireExitDialog,
          ),
        );
      },
      child: TraceableWidget(
        actionName: 'Triage Questionnaire Page',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Image.asset(
                  AppIcon.hamburgerIcon,
                ),
              ),
            ),
            title: Text(
              context.loc!.questionnaireTitle,
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              AppPopUpMenu(
                items: const ["Text Size", "Add Review"],
                onSelected: (selected) {
                  if (selected == "Text Size") {
                    TextScalePopupMenu.show(context, ref);
                  } else if (selected == "Add Review") {
                    showFeedbackBottomSheet(context);
                  } else {}
                },
              ),
            ],
          ),
          body: Consumer(
            builder: (context, ref, _) {
              return PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  //   if (yesButtonPressed.value == true ||
                  //       noButtonPressed.value == true) {
                  //     yesButtonPressed.value = false;
                  //     noButtonPressed.value = false;
                  //     return;
                  //   } else if (pageController.page! < index + 0.5) {
                  //     var question = model.questionnaireSections[index];
                  //     var isLastQuestion =
                  //         (model.questionnaireSections.length - 1 == index);

                  //     Map<String, Map<String, int>> finalValueMap =
                  //         _getWeightageAnswerCode(question.answerOption ?? []);
                  //     model.addQuestionnaireAnswer(
                  //       question.id!,
                  //       "No",
                  //       _getAnswerWeightage(finalValueMap, "No").toInt(),
                  //       _getAnswerCode(finalValueMap, "No"),
                  //     );

                  //     if (isLastQuestion) {
                  //       model.saveQuestionaireResponse();
                  //       await model.saveQuestionaireResponseToDB();
                  //       ref.read(triageStepperProvider).goToNextStep();
                  //     }
                  //   }
                  // },

                  scrollDirection: Axis.horizontal,
                  itemCount: model.questionnaireSections.length,
                  itemBuilder: (context, index) {
                    pageController.addListener(() {
                      if (pageController.page == index.toDouble()) {
                        ref.read(questionnaireIndexProvider.notifier).state =
                            index;
                      }
                    });

                    index;
                    logger.d({"index": index});
                    var question = model.questionnaireSections[index];
                    var isLastQuestion =
                        (model.questionnaireSections.length - 1 == index);

                    Map<String, Map<String, int>> finalValueMap =_getWeightageAnswerCode(question.answerOption ?? []);

                    Map<int, bool?> responseMap = {};

                    if (question.type == QuestionnaireType.Group) {
                      return Center(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.km),
                          ),
                          elevation: AppSize.ks,
                          color: Colors.white,
                          child: SizedBox(
                            width: AppSize.width(context) * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.all(AppSize.km),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          loc.eyeAssessmentPopUpHeading,
                                          style:
                                              applyFiraSansFont(fontSize: 24),
                                        ),
                                        SvgPicture.asset(
                                          AppIcon.question,
                                          height: 32,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: AppSize.ks,
                                    ),
                                    Text(
                                      question.text ?? '',
                                      style: applyRobotoFont(fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: AppSize.ks,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextButton(
                                          onPressed: () async {
                                            if (index == 0) {
                                              ref
                                                  .read(accessibilityProvider)
                                                  .resetBrightness();
                                              Navigator.of(context).pop();
                                            }
                                            int groupSectionCount = 0;
                                            while (index <
                                                    model.questionnaireSections
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
                                                model.questionnaireSections
                                                    .length) {
                                              model.saveQuestionaireResponse();

                                              await model
                                                  .saveQuestionaireResponseToDB();
                                              ref
                                                  .read(triageStepperProvider)
                                                  .goToNextStep();
                                            } else {
                                              index--;
                                              pageController.animateToPage(
                                                index + 1,
                                                duration: const Duration(
                                                  milliseconds: 80,
                                                ),
                                                curve: Curves.easeIn,
                                              );
                                            }
                                          },
                                          child: AutoSizeText(
                                            question.answerOption?.first.answer
                                                    ?.answerDisplayString ??
                                                "",
                                            style: applyRobotoFont(
                                              fontSize: 14,
                                              color: AppColor.primary,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: TextButton(
                                            onPressed: () {
                                              pageController.animateToPage(
                                                index + 1,
                                                duration: const Duration(
                                                  milliseconds: 80,
                                                ),
                                                curve: Curves.easeIn,
                                              );
                                            },
                                            child: AutoSizeText(
                                              question.answerOption?.last.answer
                                                      ?.answerDisplayString ??
                                                  "",
                                              textAlign: TextAlign.center,
                                              style: applyRobotoFont(
                                                fontSize: 14,
                                                color: AppColor.primary,
                                              ),
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
                    } else if (question.type == QuestionnaireType.Choice) {
                      return OptionCard(
                        totalGroupQuestion: model.totalGroupQuestion(),
                        question: question,
                        index: index,
                        total: model.questionnaireSections.length,
                    
                        //NO BUTTON PRESSED START

                        onNoButtonPressed: (bool isNav, bool isForward) async {
                          if (isNav == false) {
                            noButtonPressed.value = true;
                            responseMap = {index: false};
                            logger.d(responseMap);
                            model.addQuestionnaireAnswer(
                              question.id!,
                              "No",
                             _getAnswerWeightage(finalValueMap, "No")
                                  .toInt(),
                              _getAnswerCode(finalValueMap, "No"),
                            );

                            if (isLastQuestion) {
                              model.saveQuestionaireResponse();

                              await model.saveQuestionaireResponseToDB();
                              ref.read(triageStepperProvider).goToNextStep();
                            } else {
                              pageController.animateToPage(
                                index + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            }
                          }

                          model.addQuestionnaireAnswer(
                            question.id!,
                            "No",
                            _getAnswerWeightage(finalValueMap, "No")
                                .toInt(),
                            _getAnswerCode(finalValueMap, "No"),
                          );

                          if (isLastQuestion) {
                            model.saveQuestionaireResponse();

                            await model.saveQuestionaireResponseToDB();
                            ref.read(triageStepperProvider).goToNextStep();
                          } else {
                            if (isForward == true) {
                              pageController.animateToPage(
                                index + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            } else {
                              pageController.animateToPage(
                                index - 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            }
                          }
                        },

                        //NO BUTTON PRESSED END

                        //YES BUTTON PRESSED START

                        onYesButtonPressed: () async {
                          yesButtonPressed.value = true;
                          responseMap = {index: true};
                          logger.d(responseMap);
                          model.addQuestionnaireAnswer(
                            question.id!,
                            "Yes",
                            _getAnswerWeightage(finalValueMap, "Yes")
                                .toInt(),
                            _getAnswerCode(finalValueMap, "Yes"),
                          );

                          if (isLastQuestion) {
                            model.saveQuestionaireResponse();

                            await model.saveQuestionaireResponseToDB();
                            ref.read(triageStepperProvider).goToNextStep();
                          } else {
                            pageController.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          }
                        },

                        //YES BUTTON PRESSED END
                      );
                    } else if (question.type == QuestionnaireType.String) {
                      return TriageTextTypeQuestion(
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

                            await model.saveQuestionaireResponseToDB();
                            ref.read(triageStepperProvider).goToNextStep();
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
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              loc.eyeAssessmentUnsupportedQuestion,
                              style: applyRobotoFont(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: AppColor.black,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              yesButtonPressed.value = true;
                              if (isLastQuestion) {
                                model.saveQuestionaireResponse();

                                await model.saveQuestionaireResponseToDB();
                                ref.read(triageStepperProvider).goToNextStep();
                              } else {
                                pageController.animateToPage(
                                  index + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Text(
                              loc.skipButton,
                            ),
                          )
                        ],
                      );
                    }
                  });
            },
          ),
        ),
      ),
    );
  }
}

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

