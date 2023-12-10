import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:js';

class GeneralInformation extends ConsumerWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VTPatientModel? patient =
        ref.watch(registerNewPatientProvider).patientDetails;

    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            )),
        padding: const EdgeInsets.all(AppSize.klpadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General Information",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Wrap(
                runSpacing: 10,
                spacing: 100,
                direction: Axis.horizontal,
                children: [
                  Wrap(
                    spacing: AppSize.kmpadding,
                    children: [
                      Text(
                        "Date of Birth",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      if (patient!.dateOfBirth!.isNotEmpty)
                        Text(
                          "${patient.dateOfBirth}",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          ),
                        ),
                      if (patient.age!.isNotEmpty)
                        Text(
                          "(${patient.age})",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
                  Wrap(
                    spacing: AppSize.kmpadding,
                    children: [
                      Text(
                        "Gender",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        patient.gender!,
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: AppSize.kmpadding + 20,
                    children: [
                      Text(
                        "Address",
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      Text(
                        "${patient.address!.doorNumber} ${patient.address!.city}, ${patient.address!.district}, ${patient.address!.state}",
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
        ));
  }
}
