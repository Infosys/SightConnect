import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:millimeters/millimeters.dart';
import '../../domain/models/enums/tumbling_enums.dart';
import '../../domain/models/tumbling_models.dart';
import '../providers/visual_acuity_test_provider.dart';

class TopReadingCard extends ConsumerWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    var currentLevel = model.level;

    final physicalities = Millimeters.of(context);
    final mm = physicalities.mm;
    var scaleFactor = IOSDeviceInfoService.getOptoTypeScaleFactor(context);
    final optoTypeSize = mm(currentLevel!.size * 10 * scaleFactor);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.klradius),
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
                  spacing: optoTypeSize,
                  children: List.generate(
                    model.level!.questions.length,
                    (index) {
                      var question = model.level!.questions[index];

                      return _RotatedTumblingE(
                        size: optoTypeSize,
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      currentLevel.snellerFraction,
                      style: applyFiraSansFont(
                        color: AppColor.grey,
                      ),
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        var model = ref.watch(tumblingTestProvider);
                        return Text(
                          model.currentEye == Eye.left
                              ? context.loc!.leftEyeString
                              : (model.currentEye == Eye.right
                                  ? context.loc!.rightEyeString
                                  : "Both Eye"),
                          style: applyFiraSansFont(
                            fontSize: 18,
                          ),
                        );
                      },
                    ),
                    Text(
                      "40 cms",
                      style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColor.green),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSize.ksheight),
            // Flexible(
            //   child: LinearPercentIndicator(
            //     padding: const EdgeInsets.all(2),
            //     lineHeight: Responsive.isMobile(context) ? 8 : 14,
            //     percent: (model.currentLevel! / model.maxLevel!).clamp(0, 1),
            //     barRadius: const Radius.circular(AppSize.klradius),
            //     progressColor: AppColor.green,
            //   ),
            // ),
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
