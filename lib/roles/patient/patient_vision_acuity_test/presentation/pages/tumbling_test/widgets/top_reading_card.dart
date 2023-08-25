import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopReadingCard extends StatelessWidget {
  const TopReadingCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                  children: [1, 2, 3, 4, 5]
                      .map((e) => RotatedBox(
                            quarterTurns: e,
                            child: SvgPicture.asset(
                              "assets/images/tumbling_e.svg",
                            ),
                          ))
                      .toList(),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    .map((e) => Flexible(
                          child: LinearPercentIndicator(
                            padding: const EdgeInsets.all(2),
                            lineHeight: 8,
                            percent: e == 1 ? 0.4 : 0,
                            progressColor: AppColor.kGreen,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ));
  }
}
