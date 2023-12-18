import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/general_information.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../patient/patient_authentication/presentation/provider/patient_profile_provider.dart';

class VisionTechnicianAssessmentTimeline extends ConsumerWidget {
  const VisionTechnicianAssessmentTimeline({
    super.key,
    required this.patientId,
  });

  final int? patientId;

  // final VTPatientModel patient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel? patient =
    // ref.watch(visionTechnicianSearchProvider).patientDetails;
    bool closed = true;

    var model = ref.watch(getPatientProfileProvider).asData?.value.profile;
    var dateYear = DateTime.now().year;

    int giveAge() {
      var age = int.parse(model?.patient?.yearOfBirth ?? "");
      return (dateYear - age).toInt();
    }

    String genderString = model!.patient!.gender.toString().split('.').last;
    final address = _formateAddress(
      line: model.patient?.address?.first.line ?? "",
      ward: model.patient?.address?.first.ward ?? "",
      district: model.patient?.address?.first.district ?? "",
      state: model.patient?.address?.first.state ?? "",
    );

    String profileImage = model.patient?.profilePhoto ?? "";


    return Scaffold(
      backgroundColor: AppColor.scaffold,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(AppSize.kmpadding)),
            backgroundColor: closed
                ? MaterialStateProperty.all(AppColor.lightGrey)
                : MaterialStateProperty.all(AppColor.primary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.klradius * 5),
              ),
            ),
          ),
          onPressed: closed
              ? null
              : () {
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
              color: closed ? AppColor.grey : AppColor.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(
          "${model.patient?.name ?? ""} - OP ${model.patient?.abhaNumber.toString() ?? ""}",
          // '${patient.firstName} ${patient.lastName} - OP ${patient.patientId}'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimelineProfile(model: model),
              const SizedBox(height: AppSize.ksheight),
              GeneralInformation(model: model),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              AssessmentTimeline(),
              const SizedBox(
                height: AppSize.ksheight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _formateAddress({
  required String line,
  required String ward,
  required String district,
  required String state,
}) {
  return "$line, $ward, $district, $state";
}
