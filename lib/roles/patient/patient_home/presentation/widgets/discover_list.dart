import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/discover_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DiscoverCardList extends StatelessWidget {
  const DiscoverCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "image": AppImages.discover2,
        "name":
            "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque",
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
          Text(
            "Discover",
            style: applyFiraSansFont(fontSize: 18),
          ),
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => DiscoverCard(
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
