import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/general_information.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentTimeline extends ConsumerWidget {
  const VisionTechnicianAssessmentTimeline({
    super.key,
    // required this.patient,
  });

  // final VTPatientModel patient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VTPatientModel? patient =
        ref.watch(visionTechnicianSearchProvider).patientDetails;
    // bool closed = ref.watch(registerNewPatientProvider).patientDetails!.closed;

    // print("value is ${patient.firstName}");

    if (patient == null) return SizedBox();

    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(
            '${patient.firstName} ${patient.lastName} - OP ${patient.patientId}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.klpadding + 5),
          child: Column(
            children: [
              const TimelineProfile(),
              const SizedBox(height: AppSize.ksheight),
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
                    // backgroundColor:
                    //     closed ? AppColor.lightGrey : AppColor.shadowColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                    ),
                  ),
                  onPressed:
                      //  closed
                      //     ? null
                      //     :
                      () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const VisionTechnicianCloseAssessmentPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Close",
                    style: applyRobotoFont(
                      fontSize: 14,
                      // color: closed ? AppColor.grey : AppColor.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
