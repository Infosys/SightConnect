import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:js';

class PreliminaryAssessmentCard extends ConsumerWidget {
  const PreliminaryAssessmentCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VTPatientModel patient =
        ref.read(registerNewPatientProvider).patientDetails!;
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
              const CircleAvatar(radius: AppSize.klradius),
              const SizedBox(width: AppSize.kswidth),
              Wrap(
                direction: Axis.vertical,
                children: [
                  Text(
                    "${patient.firstName} ${patient.lastName}",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "OP ${patient.patientId}",
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
                    patient.age.toString(),
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
                    patient.gender.toString(),
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
                    "Vison Center",
                    style: applyFiraSansFont(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "LVPEI Vison Center",
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
      ),
    );
  }
}
