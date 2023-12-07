import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/pages/vision_technician_assessment_resport_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/general_information.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_profile.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';

class VisionTechnicianAssessmentTimeline extends StatelessWidget {
  const VisionTechnicianAssessmentTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffold,
        appBar: const CustomAppbar(
          leadingWidth: 70,
          centerTitle: false,
          title: Text('Sumanta Chaudhury - OP 5356785'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(AppSize.klpadding + 5),
              child: Column(
                children: [
                  const TimelineProfile(),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  const GeneralInformation(),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  AssessmentTimeline(),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColor.shadowColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.klradius),
                        ),
                      ),
                      onPressed: () {
                        showToastMessage(
                            "Done! Assessment with ID EA 010101 has been created for Sumanta.",
                            context,
                            1);
                      
                        return;
                      },
                      child: Text(
                        "Submit",
                        style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
