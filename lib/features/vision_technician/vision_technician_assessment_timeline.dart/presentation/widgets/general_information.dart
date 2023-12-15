import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:js';

class GeneralInformation extends ConsumerWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel? patient =
    //     ref.watch(visionTechnicianSearchProvider).patientDetails;

    // if (patient == null) return const SizedBox();

    return Container(
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kspadding),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date of Birth",
                         overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Address",
                         overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            if (patient.dateOfBirth.isNotEmpty)
                              Text(
                                patient.dateOfBirth,
                                   overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                                style: applyRobotoFont(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.grey,
                                  fontSize: 14,
                                ),
                              ),
                            if (patient.age.isNotEmpty)
                              Text(
                                "(${patient.age})",
                                   overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                                style: applyRobotoFont(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.grey,
                                  fontSize: 14,
                                ),
                              ),
                          ],
                        ),
                        Text(
                          "${patient.address.doorNumber} ${patient.address.city}, ${patient.address.district}, ${patient.address.state}",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            color: AppColor.grey,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Text(
                      "Gender",
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: Responsive.isMobile(context)?AppSize.kswidth:AppSize.klwidth,),
                        Text(
                      patient.gender,
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
             
            ],
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
        ],
      ),
    );
  }
}
