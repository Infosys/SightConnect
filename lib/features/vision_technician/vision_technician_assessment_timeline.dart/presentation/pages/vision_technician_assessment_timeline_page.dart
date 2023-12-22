import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/general_information.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentTimeline extends ConsumerWidget {
  const VisionTechnicianAssessmentTimeline({
    this.patientDetails,
    super.key,
  });
  final VTPatientDto? patientDetails;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (patientDetails == null) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            "No patient found",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    VisionTechnicianCloseAssessmentPage(
                      patientDetails : patientDetails
                    ),
              ),
            );
          },
          child: Text(
            "Close",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(
          "${patientDetails?.name ?? ""} - OP ${patientDetails?.id ?? ""}",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              TimelineProfile(model: patientDetails!),
              const SizedBox(height: AppSize.ksheight),
              GeneralInformation(model: patientDetails!),
              const SizedBox(height: AppSize.ksheight),
              AssessmentTimeline(
                encounterId: patientDetails!.encounterId,
                enconterDate: patientDetails!.encounterStartDate.toString(),
              ),
              const SizedBox(height: AppSize.ksheight),
            ],
          ),
        ),
      ),
    );
  }
}
