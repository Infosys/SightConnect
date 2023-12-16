import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_call.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_ivr_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_questions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/preliminary_assessment_vision_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../widgets/preliminary_assessment_recommendation.dart';

class VisionTechnicianPreliminaryAssessmentPage extends ConsumerStatefulWidget {
  const VisionTechnicianPreliminaryAssessmentPage(
      {super.key, required this.patientId});

  final int? patientId;

  @override
  ConsumerState<VisionTechnicianPreliminaryAssessmentPage> createState() =>
      _VisionTechnicianPreliminaryAssessmentPageState();
}

class _VisionTechnicianPreliminaryAssessmentPageState
    extends ConsumerState<VisionTechnicianPreliminaryAssessmentPage> {
  final _formKey = GlobalKey<FormState>();
  int isSelectedOption = 1;
  bool isWidgetVisible = true;
  void updateVisibility(int selectedOption) {
    setState(
      () {
        isSelectedOption = selectedOption;
        isWidgetVisible = (selectedOption == 1) ? true : false;
        debugPrint("$isWidgetVisible");
        debugPrint("$isSelectedOption");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // VTPatientModel patient = ref.read(registerNewPatientProvider).patient;
    int id = widget.patientId ?? 0;
    logger.d("patient id is $id");
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: TextButton(
          onPressed: () async {
            // ref.read(registerNewPatientProvider).submit();

            showToastMessage(
              "Done! Assessment with ID EA 010101 has been created for Sumanta.",
              context,
              1,
            );
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
            // Navigator.pop(context);
            // Navigator.pop(context);
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(AppSize.kmpadding)),
            backgroundColor: MaterialStateProperty.all(AppColor.primary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.klradius * 5),
              ),
            ),
          ),
          child: Text(
            "Submit",
            style: applyRobotoFont(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Preliminary Assessment'),
        leadingIcon: IconButton(
          onPressed: () {
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PreliminaryAssessmentCard(patientId: id),
                const SizedBox(height: AppSize.klheight),
                const PreliminaryAssessmentIvrCard(),
                const SizedBox(height: AppSize.klheight),
                PreliminaryAssessmentIvrCall(
                  isSelectedOption: isSelectedOption,
                  onSelectedOptionChanged: updateVisibility,
                ),
                if (isWidgetVisible) PreliminaryAssessmentQuestions(),
                if (isWidgetVisible)
                  const Column(
                    children: [
                      SizedBox(height: AppSize.klheight),
                      PreliminaryAssessmentRecommendation(),
                      SizedBox(height: AppSize.klheight),
                      PreliminaryAssessmentVisionCenter(),
                      SizedBox(height: AppSize.klheight),
                    ],
                  )

                // showToastMessage(
                //   "Done! Assessment with ID EA 010101 has been created for Sumanta.",
                //   context,
                //   1,
                // );

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const VisionTechnicianAssessmentTimeline();
                //     },
                //   ),
                // );
                // },
                // style: ButtonStyle(
                //   padding: MaterialStateProperty.all<EdgeInsets>(
                //       const EdgeInsets.all(AppSize.kmpadding)),
                //   backgroundColor:
                //       MaterialStateProperty.all(AppColor.primary),
                //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //     RoundedRectangleBorder(
                //       borderRadius:
                //           BorderRadius.circular(AppSize.klradius * 5),
                //     ),
                //   ),
                // ),
                // child: Text(
                //   "Submit",
                //   style: applyRobotoFont(
                //     fontSize: 13,
                //     fontWeight: FontWeight.w500,
                //     color: AppColor.white,
                //   ),
                // ),
              ],
            ),
          ),
          // SizedBox(
          //   width: double.infinity,
          //   child: OutlinedButton(
          //     style: OutlinedButton.styleFrom(
          //       backgroundColor: AppColor.shadowColor,
          //       shape: RoundedRectangleBorder(
          //         borderRadius:
          //             BorderRadius.circular(AppSize.klradius),
          //       ),
          //     ),
          //     onPressed: () {
          //       if (_formKey.currentState!.validate()) {
          //         showToastMessage(
          //             "Done! Assessment with ID EA 010101 has been created for Sumanta.",
          //             context,
          //             1);

          //         Navigator.push(context, MaterialPageRoute(
          //           builder: (context) {
          //             return const VisionTechnicianAssessmentTimeline();
          //           },
          //         ));
          //         return;
          //       }
          //     },
          //     child: Text(
          //       "Submit",
          //       style: applyRobotoFont(
          //           fontSize: 14,
          //           color: AppColor.white,
          //           fontWeight: FontWeight.w500),
          //     ),
          //   ),
          // )
          // ],
        ),
      ),
    );
    //   ),
    // );
  }
}
