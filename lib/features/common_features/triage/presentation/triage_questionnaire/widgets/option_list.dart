import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../main.dart';
import '../../../domain/models/triage_assessment_model.dart';

class OptionList extends HookConsumerWidget {
  const OptionList({
    required this.onPageChanged,
    required this.questions,
    super.key,
  });

  final List<QuestionResponseModel> questions;
  final VoidCallback onPageChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var questionIndex = useState<int>(0);
    var model = ref.watch(triageQuestionnaireProvider);

    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            questions.length,
            (index) {
              QuestionResponseModel question = questions[questionIndex.value];

              return Container(
                margin: const EdgeInsets.all(8),
                width: AppSize.width(context) * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      question.definition ?? '',
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
                            child: question.defaultValue != null
                                ? Image.asset(
                                    question.defaultValue!,
                                  )
                                : const SizedBox(),
                          ),
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
                  if (questionIndex.value < questions.length - 1) {
                    logger.d(
                        "Question Index: ${questions[questionIndex.value].id}");
                    model.addQuestionnaireAnswer(
                        questions[questionIndex.value].id!,
                        true,
                        questions[questionIndex.value].weight!);
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
