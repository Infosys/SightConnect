import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/fake_data_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopReadingCard extends ConsumerWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);
    var boxSizeInPixels = calculateLogicalPixelSize(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
        shadowColor: AppColor.kPrimary.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                runAlignment: WrapAlignment.center,
                runSpacing: AppSize.kmheight,
                spacing: AppSize.kmwidth,
                children: model.tumblingTestList[model.currentTestIndex].eList
                    .map(
                      (e) => RotatedBox(
                        quarterTurns: e.quater,
                        child: SvgPicture.asset(
                          AppImages.tumblingE,
                          height: boxSizeInPixels,
                          width: boxSizeInPixels,
                          colorFilter: ColorFilter.mode(
                            e.status == eStatus.correct
                                ? AppColor.kGreen
                                : e.status == eStatus.incorrect
                                    ? AppColor.kRed
                                    : AppColor.kBlack,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: AppSize.klheight),
              Padding(
                padding: const EdgeInsets.all(AppSize.kmpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: model.tumblingTestList
                      .map(
                        (e) => Flexible(
                          child: LinearPercentIndicator(
                            padding: const EdgeInsets.all(2),
                            lineHeight: Responsive.isMobile(context) ? 8 : 14,
                            percent: 0.01 * e.progress,
                            barRadius: const Radius.circular(AppSize.klradius),
                            progressColor: AppColor.kGreen,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
            ],
          ),
        ),
      ),
    );
  }

  double calculateLogicalPixelSize(BuildContext context) {
    final double dp = MediaQuery.of(context).devicePixelRatio;
    var sizeInCm = 2;

    final double boxSizeInPixels = (dp * sizeInCm * 38) / 2.54;
    return boxSizeInPixels;
  }
}
