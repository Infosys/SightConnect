import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/good_to_know_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GoodToKnowCardList extends StatelessWidget {
  const GoodToKnowCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "image": AppImages.goodToKnowOne,
        "name":
            "The eye is the window to the world, at the same time, it is the window of the soul",
      },
      {
        "image": AppImages.discover,
        "name":
            "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque",
      },
    ];
    return Container(
      decoration: BoxDecoration(
        boxShadow: appShadow(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                "Good To Know",
                style: applyFiraSansFont(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: applyFiraSansFont(
                        fontSize: 14,
                        color: AppColor.kBlue,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
          const SizedBox(height: AppSize.ksheight),
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
