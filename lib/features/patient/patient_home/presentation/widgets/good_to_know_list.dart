import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/good_to_know_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../data/source/fake_data_source.dart';

class GoodToKnowCardList extends StatelessWidget {
  const GoodToKnowCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = goodToKnow;
    return Container(
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Text(
                  "Knowledge Center",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => GoodToKnowCards(
                        data: e,
                      ),
                    )
                    .toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
