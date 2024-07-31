import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientDetailHeader extends ConsumerWidget {
  const PatientDetailHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var patientDetails = ref.watch(getPatientProfileProvider);
    var gender = (patientDetails.asData?.value.profile?.patient?.gender) ?? "";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.ks + 2, vertical: AppSize.ks),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.ks),
          color: AppColor.lightBlue,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColor.grey,
            ),
            const SizedBox(
              width: AppSize.ks,
            ),
            Text(
              patientDetails.asData?.value.profile?.patient?.firstName ?? "",
              style:
                  applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Text(
              _genderMapper(gender.toString()),
              style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.grey),
            )
          ],
        ),
      ),
    );
  }

  String _genderMapper(String gender) {
    if (gender == "PatientGender.MALE") {
      return "Male";
    } else if (gender == "PatientGender.FEMALE") {
      return "Female";
    } else {
      return "Other";
    }
  }
}
