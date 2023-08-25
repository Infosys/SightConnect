import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/fake_data_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/patient_tumbling_start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopReadingCard extends ConsumerWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.klradius),
      ),
      shadowColor: AppColor.kPrimary.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: Column(
          children: [
            SizedBox(
              height: AppSize.height * 0.02,
            ),
            Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: model.tumblingTestList[model.currentTestIndex].eList
                    .map((e) => RotatedBox(
                          quarterTurns: e.quater,
                          child: SvgPicture.asset(
                            "assets/images/tumbling_E.svg",
                            height: model
                                .tumblingTestList[model.currentTestIndex].eSize,
                            colorFilter: ColorFilter.mode(
                              e.status == eStatus.correct
                                  ? AppColor.kGreen
                                  : e.status == eStatus.incorrect
                                      ? AppColor.kRed
                                      : AppColor.kBlack,
                              BlendMode.srcIn,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: model.tumblingTestList
                  .map(
                    (e) => Flexible(
                      child: LinearPercentIndicator(
                        padding: const EdgeInsets.all(2),
                        lineHeight: 8,
                        percent: 0.01 * e.progress,
                        progressColor: AppColor.kGreen,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
