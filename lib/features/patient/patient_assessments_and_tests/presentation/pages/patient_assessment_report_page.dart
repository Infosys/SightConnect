import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../data/fake_data_source.dart';

class PatientAssessmentReportPage extends StatelessWidget {
  const PatientAssessmentReportPage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var currentData = data[index];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("IVR Eye Assessment"),
            const Spacer(),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(context) * 0.01,
                ),
                decoration: BoxDecoration(
                  color: currentData['checkupType'] == "Routine Checkup"
                      ? AppColor.green
                      : AppColor.orange,
                ),
                child: Text(
                  currentData['checkupType'],
                  style: applyRobotoFont(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white),
                )),
          ],
        ),
      ),
    );
  }
}
