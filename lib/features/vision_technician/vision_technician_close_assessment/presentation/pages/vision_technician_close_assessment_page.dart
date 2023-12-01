import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/close_heading.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/custom_switch.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/eye_scan_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: Column(
          children: [
            const CloseHeading(),
            EyeScanCard(),
            SizedBox(
              width: AppSize.width(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Solutions(s)",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    // width: AppSize.width(context),
      // margin: const EdgeInsets.symmetric(vertical: AppSize.kmpadding),
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.kmradius),
      ),
      child: const Row(
        children: [
          
          CustomSwitch(),
        ],
      ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
