import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/recommendations.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionTechnicianCloseAssessmentPage extends StatelessWidget {
  const VisionTechnicianCloseAssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        // backgroundColor: AppColor.primary,
        title: Text(
          'Sumanta Chaudhury - OP 5356785',
          style: applyFiraSansFont(),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                // backgroundColor: MaterialStateProperty.all(AppColor.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Back",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.primary,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColor.primary),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                ),
              ),
              child: Text(
                "Submit",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
          SizedBox(width: AppSize.width(context) * 0.05),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            CloseHeading(),
            EyeScanCard(),
            SolutionCard(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
