import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../data/models/triage_assessment.dart';

class OptionList extends HookConsumerWidget {
  const OptionList({
    required this.onPageChanged,
    required this.questions,
    super.key,
  });

  final List<Question> questions;
  final VoidCallback onPageChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var questionIndex = useState<int>(0);

    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            questions.length,
            (index) {
              Question question = questions[questionIndex.value];

              return Container(
                margin: const EdgeInsets.all(8),
                width: AppSize.width(context) * 0.95,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      question.statement ?? '',
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          AppImages.q3,
                        ),
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
                  if (questionIndex.value > 0) {
                    questionIndex.value = questionIndex.value - 1;
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
