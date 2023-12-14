import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/constants/app_icon.dart';
import '../../../../../../main.dart';
import '../../../../../../shared/theme/text_theme.dart';

class OptionList extends HookConsumerWidget {
  const OptionList({
    required this.onPageChanged,
    required this.questions,
    super.key,
  });

  final List<AnswerOptionModel> questions;
  final VoidCallback onPageChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var questionIndex = useState<int>(0);
    var model = ref.watch(triageQuestionnaireProvider);
    var carouselController = CarouselController();
    return Column(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          items: List.generate(
            model.questionnaireSections.length,
            (index) {
              // index = questionIndex.value;
              var question = model.questionnaireSections[index];
              if (index == 0) {
                logger.d("Question Index index: $index");
                return SizedBox(
                  height: AppSize.height(context) * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.kmradius),
                        ),
                        elevation: AppSize.kselevation,
                        color: Colors.white,
                        child: SizedBox(
                          height: 152,
                          width: AppSize.width(context) * 0.8,
                          child: Padding(
                            padding: const EdgeInsets.all(AppSize.kmpadding),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      if (index < questions.length - 1) {
                                        logger.d(
                                            "Question Index: ${questions[index].id}");
                                        model.addQuestionnaireAnswer(
                                            questions[index].id!,
                                            true,
                                            questions[index]
                                                    .answer
                                                    ?.answerItemWeight
                                                    ?.value
                                                    ?.toInt() ??
                                                0);
                                        index = index + 1;
                                        questionIndex.value = index;
                                      } else {
                                        onPageChanged();
                                      }
                                    },
                                    child: Text(
                                      "Yes",
                                      style: applyRobotoFont(
                                          fontSize: 14,
                                          color: AppColor.primary),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "No",
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
                    ],
                  ),
                );
              } else {
                return Container(
                  margin: const EdgeInsets.all(8),
                  width: AppSize.width(context) * 0.95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        question.text ?? '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.kmheight,
                      ),
                      Container(
                        height: AppSize.height(context) * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/q1.png",
                                )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(AppSize.kmpadding * 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      AppImages.mic,
                                    ),
                                    SvgPicture.asset(
                                      AppImages.speaker,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          options: CarouselOptions(
            scrollPhysics: const NeverScrollableScrollPhysics(),
            height: AppSize.height(context) * 0.7,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            initialPage: questionIndex.value,
            onPageChanged: (index, reason) {
              questionIndex.value = index;
            },
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                border: Border.fromBorderSide(
                  BorderSide(
                    color: AppColor.primary,
                  ),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  if (questionIndex.value < questions.length - 1) {
                    questionIndex.value = questionIndex.value + 1;
                  } else {
                    onPageChanged();
                  }
                },
                icon: const Icon(
                  Icons.close,
                  color: AppColor.primary,
                  size: 35,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Container(
              decoration: const BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                border: Border.fromBorderSide(
                  BorderSide(
                    color: AppColor.primary,
                  ),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  logger.d("Question Index value: ${questionIndex.value}");
                  if (questionIndex.value < questions.length - 1) {
                    logger.d(
                        "Question Index: ${questions[questionIndex.value].id}");
                    model.addQuestionnaireAnswer(
                        questions[questionIndex.value].id!,
                        true,
                        questions[questionIndex.value]
                                .answer
                                ?.answerItemWeight
                                ?.value
                                ?.toInt() ??
                            0);
                    questionIndex.value = questionIndex.value + 1;
                  } else {
                    onPageChanged();
                  }
                },
                icon: const Icon(
                  Icons.check,
                  color: AppColor.primary,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.klheight),
      ],
    );
  }
}
