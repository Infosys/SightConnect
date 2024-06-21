import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../common_features/triage/data/models/optometrician_triage_response.dart';

class OptoEyeScanTabView extends StatelessWidget {
  const OptoEyeScanTabView({required this.report, super.key});

  final OptometristTriageResponse report;
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
            Visibility(
              visible: (report.mediaCapture?.isEmpty ?? false) ? false : true,
              child: SizedBox(
                height: lerpDouble(
                    AppSize.height(context), AppSize.width(context), 1.05),
                child: TabBarView(viewportFraction: 1, children: [
                  AppNetworkImage(
                    imageUrl: report.mediaCapture?[0].fileName ?? "",
                    shapeCircle: false,
                    height: 100,
                    width: 100,
                  ),
                  AppNetworkImage(
                    imageUrl: report.mediaCapture?[1].fileName ?? "",
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
