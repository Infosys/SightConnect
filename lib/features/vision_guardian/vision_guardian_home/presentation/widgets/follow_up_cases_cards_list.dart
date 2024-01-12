import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/follow_up_cases_cards.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FollowUpCasesCardList extends StatelessWidget {
  const FollowUpCasesCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [];

    return Container(
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
            child: Row(
              children: [
                Text(
                  "Follow Up Cases",
                  style: applyFiraSansFont(fontSize: 18),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...data
                    .map(
                      (e) => FollowUpCasesCard(
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
