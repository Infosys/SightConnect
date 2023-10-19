import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/local/tumbling_data_source.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:millimeters/millimeters.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../providers/patient_visual_acuity_test_provider.dart';

class TopReadingCard extends ConsumerWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    var size = model.dataSource.getESizeFromLevel(model.currentLevel!);
    final physicalities = Millimeters.of(context);
    final mm = physicalities.mm;
    var dimension = mm(size) * 10;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.klradius),
        boxShadow: [
          //give custom shadow on bottom and left right
          BoxShadow(
            color: AppColor.primary.withOpacity(0.4),
            blurRadius: 12,
            spreadRadius: 0.8,
            offset: const Offset(0, 10),
          ),
        ],
        color: AppColor.white,
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: Center(
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: dimension,
                  children: List.generate(
                    model.level!.questions.length,
                    (index) {
                      var question = model.level!.questions[index];
                      return _RotatedTumblingE(
                        size: dimension,
                        question: question,
                        index: index,
                        selectedIndex: model.currentIndex!,
                      );
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                model.dataSource.getSnellerFraction(model.currentLevel!),
                style: applyFiraSansFont(
                  color: AppColor.grey,
                ),
              ),
            ),
            const SizedBox(height: AppSize.ksheight),
            Flexible(
              child: LinearPercentIndicator(
                padding: const EdgeInsets.all(2),
                lineHeight: Responsive.isMobile(context) ? 8 : 14,
                percent: ((model.currentLevel!) / maxLevel).clamp(0, 1),
                barRadius: const Radius.circular(AppSize.klradius),
                progressColor: AppColor.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RotatedTumblingE extends StatelessWidget {
  const _RotatedTumblingE({
    required this.size,
    required this.question,
    required this.index,
    required this.selectedIndex,
  });

  final double size;
  final Question question;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: question.angle,
          child: SvgPicture.asset(
            AppImages.tumblingE,
            width: size,
            height: size,
            colorFilter: ColorFilter.mode(
              question.questionStatus == QuestionStatus.unattempted
                  ? AppColor.black
                  : question.questionStatus == QuestionStatus.right
                      ? AppColor.green
                      : AppColor.red,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
          visible: index == selectedIndex,
          child: Container(
            height: 4,
            width: size,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
