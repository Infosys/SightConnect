import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/widgets/bottom_input_tab.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TumblingETestPage extends StatelessWidget {
  static const String routeName = '/tumbling-e-test';
  const TumblingETestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Tumbling E Test",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.question_mark,
              color: AppColor.kGrey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColor.kGrey,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(
                AppSize.kmpadding,
              ),
              child: TopReadingCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.kmpadding,
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      "Distance:",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.kGrey,
                      ),
                    ),
                    const SizedBox(width: AppSize.kswidth),
                    Text(
                      "40 cm",
                      style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColor.kGreen),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  "Left Eye",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: BottomInputTab(),
          )
        ],
      ),
    );
  }
}
