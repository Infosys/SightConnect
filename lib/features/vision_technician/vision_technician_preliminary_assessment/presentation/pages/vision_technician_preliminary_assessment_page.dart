import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';

import 'package:flutter/material.dart';

class VisionTechnicianPreliminaryAssessmentPage extends StatefulWidget {
  const VisionTechnicianPreliminaryAssessmentPage({super.key});

  @override
  State<VisionTechnicianPreliminaryAssessmentPage> createState() =>
      _VisionTechnicianPreliminaryAssessmentPageState();
}

class _VisionTechnicianPreliminaryAssessmentPageState
    extends State<VisionTechnicianPreliminaryAssessmentPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Preliminary Assessment'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(AppSize.klpadding + 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const PreliminaryAssessmentCard(),
                    const SizedBox(height: AppSize.klheight),
                    const PreliminaryAssessmentIvrCard(),
                    const SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentQuestions(),
                    const SizedBox(height: AppSize.klheight),
                    PreliminaryAssessmentVisionCenter(),
                    const SizedBox(height: AppSize.klheight),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColor.shadowColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppSize.klradius),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showToastMessage(
                                "Done! Assessment with ID EA 010101 has been created for Sumanta.",
                                context,
                                1);

                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const VisionTechnicianAssessmentTimeline();
                              },
                            ));
                            return;
                          }
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
                  ])),
        ),
      ),
    );
  }
}
