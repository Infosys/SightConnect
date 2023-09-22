import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/campaigns_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CampaginsList extends StatelessWidget {
  const CampaginsList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "image": AppImages.campaignBgOne,
        "title": "Impact of LVPEI Eye Health Pyramid",
        "description":
            "It is heart-warming to share the story of Varun, a 7-month-old born with Gl..",
      },
      {
        "image": AppImages.campaignBgTwo,
        "title": "In pursuit of healthy and happy ageing",
        "description":
            "This lovely picture of 72 year old Mrs Premalata Mohapatra is simply heart-…",
      },
    ];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.9
              : AppSize.width(context) * 0.7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              ...data.map(
                (e) => CampaginsCard(
                  data: e,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
