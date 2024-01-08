import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/left_cornea_tab_view.dart';
import 'package:eye_care_for_all/shared/widgets/right_cornea_tab_view.dart';
import 'package:flutter/material.dart';

class EyeScanTabView extends StatelessWidget {
  const EyeScanTabView({
    super.key,
    this.eyeScanData,
  });
  final List<ImageBriefEntity>? eyeScanData;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              loc.eyeScanTitle,
              style: applyRobotoFont(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
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
              tabs: [
                Tab(text: loc.rightCornea),
                Tab(text: loc.leftCornea),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: lerpDouble(
                  AppSize.height(context), AppSize.width(context), 1.05),
              child: TabBarView(
                viewportFraction: 1,
                children: [
                  RightCorneaTabView(
                    rightEyeImage: getRightEyeImageUrl(eyeScanData),
                  ),
                  LeftCorneaTabView(
                    leftEyeImage: getLeftEyeImageUrl(eyeScanData),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> getLeftEyeImageUrl(List<ImageBriefEntity>? imageBriefEntity) {
  if (imageBriefEntity == null) return [];

  List<String> leftEyeImageUrl = [];

  for (ImageBriefEntity imageBrief in imageBriefEntity) {
    if (imageBrief.bodySite == "LEFT_EYE") {
      leftEyeImageUrl.add(imageBrief.imageUrl);
    }
  }
  return leftEyeImageUrl;
}

List<String> getRightEyeImageUrl(List<ImageBriefEntity>? imageBriefEntity) {
  if (imageBriefEntity == null) return [];

  List<String> rightEyeImageUrl = [];

  for (ImageBriefEntity imageBrief in imageBriefEntity) {
    if (imageBrief.bodySite == "RIGHT_EYE") {
      rightEyeImageUrl.add(imageBrief.imageUrl);
    }
  }
  return rightEyeImageUrl;
}
