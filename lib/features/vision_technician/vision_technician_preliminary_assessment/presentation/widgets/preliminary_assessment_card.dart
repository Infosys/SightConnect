import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import '../../../../../shared/responsive/responsive.dart';

class PreliminaryAssessmentCard extends ConsumerWidget {
  const PreliminaryAssessmentCard({
    required this.patient,
    super.key,
  });
  final VTPatientDto? patient;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    if (patient == null) {
      return Container();
    }
    return Responsive.isMobile(context)
        ? Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: applycustomShadow(),
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.km - 5),
              ),
            ),
            padding: const EdgeInsets.all(AppSize.kl),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppNameAvatar(name: patient?.name),
                      const SizedBox(width: AppSize.ks),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            patient?.name?.capitalizeFirstOfEach() ?? "",
                            style:
                                applyFiraSansFont(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: AppSize.ks),
                          Text(
                            patient == null
                                ? ""
                                : "OP ${patient?.id.toString()}",
                            style: applyRobotoFont(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primary,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: AppSize.width(context) * 0.15),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.vtAge,
                            style:
                                applyFiraSansFont(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: AppSize.ks),
                          Text(
                            calculateAge(patient?.yearOfBirth),
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
                  const SizedBox(height: AppSize.ks),
                  Row(
                    children: [
                      SizedBox(width: AppSize.width(context) * 0.11),
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              loc.vtGender,
                              style: applyFiraSansFont(
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: AppSize.ks),
                            Text(
                              patient?.gender.toString().split('.').last ?? "",
                              style: applyRobotoFont(
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey,
                                fontSize: 14,
                              ),
                            ),
                          ]),
                      SizedBox(width: AppSize.width(context) * 0.3),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.vtAddress,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style:
                                applyFiraSansFont(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: AppSize.ks),
                          Text(
                            formatAddress(patient),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: applyRobotoFont(
                              fontWeight: FontWeight.w400,
                              color: AppColor.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ]))
        : Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: applycustomShadow(),
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.km - 5),
              ),
            ),
            padding: const EdgeInsets.all(AppSize.kl),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppNameAvatar(name: patient?.name),
                    const SizedBox(width: AppSize.ks),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          patient?.name?.capitalizeFirstOfEach() ?? "",
                          style: applyFiraSansFont(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: AppSize.ks),
                        Text(
                          patient == null ? "" : "OP ${patient?.id.toString()}",
                          style: applyRobotoFont(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primary,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.vtAge,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: AppSize.ks),
                    Text(
                      calculateAge(patient?.yearOfBirth),
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.vtGender,
                      style: applyFiraSansFont(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: AppSize.ks),
                    Text(
                      patient?.gender.toString().split('.').last ?? "",
                      style: applyRobotoFont(
                        fontWeight: FontWeight.w400,
                        color: AppColor.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loc.vtAddress,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: applyFiraSansFont(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: AppSize.ks),
                      Text(
                        formatAddress(patient),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: applyRobotoFont(
                          fontWeight: FontWeight.w400,
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(),
              ],
            ),
          );
  }

  String formatAddress(VTPatientDto? patient) {
    String address = "";

    if (patient == null) return "";

    if (patient.townName != null) {
      address += patient.townName!;
    }

    if (address.isNotEmpty) {
      address += ", ";
    }

    if (patient.districtName != null) {
      address += patient.districtName!;
    }

    if (address.isNotEmpty) {
      address += ", ";
    }

    if (patient.pincode != null) {
      address += patient.pincode!;
    }

    return address;
  }

  String calculateAge(String? yearOfBirth) {
    if (yearOfBirth == null || yearOfBirth.isEmpty) return "";

    return (DateTime.now().year - int.parse(yearOfBirth)).toString();
  }
}
