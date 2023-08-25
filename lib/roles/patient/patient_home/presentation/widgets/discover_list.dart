import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/discover_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DiscoverCardList extends StatelessWidget {
  const DiscoverCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var names = ["adas", "Adsas", "Adasda"];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Discover",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.ksheight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...names
                  .map(
                    (e) => const DiscoverCard(),
                  )
                  .toList()
            ],
          ),
        )
      ],
    );
  }
}
