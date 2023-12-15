import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_and_assessment_entity.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/left_cornea_tab_view.dart';
import 'package:eye_care_for_all/shared/widgets/right_cornea_tab_view.dart';
import 'package:flutter/material.dart';

class EyeScanTabView extends StatelessWidget {
  const EyeScanTabView({super.key, required this.eyeScanData});
  final List<ImageBreifEntity> eyeScanData;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Eye Scan",
              style: applyRobotoFont(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Text(
            //   "Sed ut perspiciatis unde omnis iste natus error sit",
            //   style: applyRobotoFont(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.black.withOpacity(0.8),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              dividerColor: AppColor.black,
              unselectedLabelColor: AppColor.grey,
              labelStyle: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              labelColor: AppColor.black,
              tabs: const [
                Tab(text: "Right Cornea"),
                Tab(text: "Left Cornea"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: lerpDouble(
                  AppSize.height(context), AppSize.width(context), 1.05),
              child: const TabBarView(viewportFraction: 1, children: [
                RightCorneaTabView(),
                LeftCorneaTabView(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
