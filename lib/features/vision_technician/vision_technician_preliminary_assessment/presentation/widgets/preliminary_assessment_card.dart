import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
// import 'dart:js';

class PreliminaryAssessmentCard extends ConsumerWidget {
  const PreliminaryAssessmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel patient =
    //     ref.read(registerNewPatientHelperProvider).patientDetails!;
    var model = ref.watch(getPatientProfileProvider).asData?.value.profile;
    // var dateYear = DateTime.now().year;

    // int giveAge() {
    //   var age = int.parse(model?.patient?.yearOfBirth ?? "");
    //   return (dateYear - age).toInt();
    // }

    String genderString =
        model?.patient?.gender.toString().split('.').last ?? "";
    final address = _formateAddress(
      line: model?.patient?.address?.first.line ?? "",
      ward: model?.patient?.address?.first.ward ?? "",
      district: model?.patient?.address?.first.district ?? "",
      state: model?.patient?.address?.first.state ?? "",
    );

    String profileImage = model?.patient?.profilePhoto ?? "";

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.klpadding),
      child: Wrap(
        runSpacing: AppSize.ksheight,
        direction: Axis.horizontal,
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              CircleAvatar(
                radius: AppSize.klradius,
                // child: Imag,
                child: Image.network(
                  profileImage,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: AppSize.kswidth),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    model?.patient?.name ?? "",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    model?.patient?.abhaNumber.toString() ?? "",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: AppSize.kswidth * 3),
          Wrap(direction: Axis.vertical, spacing: AppSize.ksheight, children: [
            Wrap(spacing: AppSize.kmwidth * 5, children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "Age",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "Gender",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    genderString ?? "",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w400,
                      color: AppColor.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ]),
            Wrap(
              direction: Axis.vertical,
              children: [
                Text(
                  "Address",
                  style: applyFiraSansFont(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  address ?? "",
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w400,
                    color: AppColor.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ]),
        ],
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
