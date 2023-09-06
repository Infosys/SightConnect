import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/bottom_input_tab.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_overlay.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';

import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TumblingTestInitiatePage extends StatelessWidget {
  static const String routeName = "/tumbling-test-initiate";
  const TumblingTestInitiatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return TumblingOverlay(
      child: Scaffold(
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
              onPressed: () {
                // showAccessibilitySettings(context, ref);
              },
              icon: const Icon(
                Icons.settings,
                color: AppColor.kGrey,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TopReadingCard(),
            Flexible(
              child: Container(
                alignment: Alignment.bottomCenter,
                width: Responsive.isMobile(context)
                    ? AppSize.width(context) * 0.9
                    : AppSize.width(context) * 0.8,
                height: Responsive.isMobile(context)
                    ? AppSize.height(context) * 0.4
                    : AppSize.height(context) * 0.3,
                child: const BottomInputTab(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
