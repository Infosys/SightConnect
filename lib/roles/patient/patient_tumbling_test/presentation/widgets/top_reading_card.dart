import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:millimeters/millimeters.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopReadingCard extends ConsumerWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    final physicalities = Millimeters.of(context);
    final mm = physicalities.mm;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.klradius),
          ),
          shadowColor: AppColor.kPrimary.withOpacity(0.5),
          child: Container(
            height: 200,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Center(
              child: Wrap(
                runAlignment: WrapAlignment.center,
                runSpacing: AppSize.kmheight,
                spacing: AppSize.kmwidth,
                children: model.tumblingTestList[model.currentTestIndex].eList
                    .map(
                      (e) => RotatedBox(
                        quarterTurns: e.quarter,
                        child: SvgPicture.asset(
                          AppImages.tumblingE,
                          width: mm(model
                              .tumblingTestList[model.currentTestIndex].eSize),
                          height: mm(model
                              .tumblingTestList[model.currentTestIndex].eSize),
                          colorFilter: ColorFilter.mode(
                            e.status == EStatus.correct
                                ? AppColor.kGreen
                                : e.status == EStatus.incorrect
                                    ? AppColor.kRed
                                    : AppColor.kBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: model.tumblingTestList
              .map(
                (e) => Flexible(
                  child: LinearPercentIndicator(
                    padding: const EdgeInsets.all(2),
                    lineHeight: Responsive.isMobile(context) ? 8 : 14,
                    percent: e.progress,
                    barRadius: const Radius.circular(AppSize.klradius),
                    progressColor: AppColor.kGreen,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
