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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.white,
                  border: Border.all(
                    color: AppColor.white,
                    width: 4,
                  ),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    currentData['image'],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    currentData['name'],
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'PID: OP 4567890',
                    style: applyFiraSansFont(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      )),
    );
  }
}
