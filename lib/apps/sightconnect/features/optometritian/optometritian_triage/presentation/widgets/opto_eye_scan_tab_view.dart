import 'dart:ui';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../common/triage/data/models/optometrician_triage_response.dart';

class OptoEyeScanTabView extends StatelessWidget {
  const OptoEyeScanTabView({required this.report, super.key});

  final OptometristTriageResponse report;

  @override
  Widget build(BuildContext context) {
    final leftEyeUrl = report.mediaCapture?.firstWhere((element) {
      return element.encodingType == "base64-LEFT";
    }).fileName;

    final rightEyeUrl = report.mediaCapture?.firstWhere((element) {
      return element.encodingType == "base64-RIGHT";
    }).fileName;

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
                Tab(text: "Left Cornea"),
                Tab(text: "Right Cornea"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: (report.mediaCapture?.isEmpty ?? false) ? false : true,
              child: SizedBox(
                height: lerpDouble(
                    AppSize.height(context), AppSize.width(context), 1.05),
                child: TabBarView(viewportFraction: 1, children: [
                  AppNetworkImage(
                    imageUrl: leftEyeUrl ?? "",
                    shapeCircle: false,
                    height: 100,
                    width: 100,
                  ),
                  AppNetworkImage(
                    imageUrl: rightEyeUrl ?? "",
                    shapeCircle: false,
                    height: 100,
                    width: 100,
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
