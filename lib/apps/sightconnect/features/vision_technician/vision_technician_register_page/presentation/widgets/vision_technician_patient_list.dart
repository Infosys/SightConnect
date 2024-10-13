/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/vision_technician_register_provider.dart';

class VisionTechnicianPatientListWidget extends ConsumerWidget {
  const VisionTechnicianPatientListWidget({
    super.key,
    required this.response,
  });

  final List<VisionGuardianEventPatientResponseModel> response;

  int calculateAge(DateTime dateOfBirth) {
    final now = DateTime.now();
    int age = now.year - dateOfBirth.year;
    if (now.month < dateOfBirth.month ||
        (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var data = response.where((element) => element.patientId != null).toList();
    // Showing primary account at the top
    data.sort((a, b) {
      if (a.parentPatientId == null && b.parentPatientId != null) {
        return -1;
      } else if (a.parentPatientId != null && b.parentPatientId == null) {
        return 1;
      } else {
        return 0;
      }
    });
    return ListView.separated(
      shrinkWrap: true,
      itemCount: response.length,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        if (index == data.length) {
          return const Padding(
            padding: EdgeInsets.all(AppSize.kl),
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }
        return _RegisterPatientDisplayCard(
          data: data[index],
          onStartAssessment: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
                  patientDetails: VTPatientDto(
                    id: data[index].patientId,
                    name: data[index].name,
                    mobile: data[index].phoneNumber,
                    yearOfBirth: data[index].yearOfBirth,
                    dayOfBirth: data[index].dayOfBirth,
                    monthOfBirth: data[index].monthOfBirth,
                    gender: _gender(data[index].gender!),
                    districtName: data[index].address?.first.district,
                    pincode: data[index].address?.first.pincode,
                    townName: data[index].address?.first.town,
                  ),
                ),
              ),
            );
          },
          onAddMember: () {
            // This will add family member in the primary account
            try {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PatientRegistrationMiniappPage(
                    actionType: MiniAppActionType.ADD_MEMBER,
                    displayName: loc.vtAddMember,
                    parentPatientId: data[index].patientId.toString(),
                    mobileNumber: data[index].phoneNumber,
                  ),
                ),
              ).then(
                (value) {
                  if (value == null || value == false) {
                    Fluttertoast.showToast(msg: loc.vtDependentNotAdded);
                  } else if (value) {
                    Fluttertoast.showToast(msg: loc.vtDependentAdded);
                  }
                  ref.invalidate(vtRegisterProvider);
                },
              );
            } catch (e) {
              Fluttertoast.showToast(msg: loc.vtServiceNotAvailable);
            }
          },
          onCompleteProfile: () {
            try {
              Navigator.of(context)
                  .push<bool?>(
                MaterialPageRoute(
                  builder: (context) => PatientRegistrationMiniappPage(
                    actionType: MiniAppActionType.REGISTER,
                    displayName: loc.vtRegisterPatient,
                    mobileNumber: data[index].phoneNumber,
                  ),
                ),
              )
                  .then(
                (value) {
                  if (value == null || value == false) {
                    Fluttertoast.showToast(msg: loc.vtPatientNotRegistered);
                  } else if (value) {
                    Fluttertoast.showToast(msg: loc.vtPatientRegistered);
                  }
                  ref.invalidate(vtRegisterProvider);
                },
              );
            } catch (e) {
              Fluttertoast.showToast(msg: loc.vtServiceNotAvailable);
            }
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: AppSize.km);
      },
    );
  }

  Gender _gender(String gender) {
    if (gender.toLowerCase() == "male") {
      return Gender.MALE;
    } else if (gender.toLowerCase() == "female") {
      return Gender.FEMALE;
    } else {
      return Gender.OTHERS;
    }
  }
}

class _RegisterPatientDisplayCard extends StatelessWidget {
  const _RegisterPatientDisplayCard({
    required this.data,
    required this.onStartAssessment,
    required this.onAddMember,
    required this.onCompleteProfile,
  });
  final VisionGuardianEventPatientResponseModel data;
  final VoidCallback onStartAssessment;
  final VoidCallback onAddMember;
  final VoidCallback onCompleteProfile;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    final isMobile = Responsive.isMobile(context);

    if (isMobile) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
        padding: const EdgeInsets.all(AppSize.km),
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: applycustomShadow(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            () {
              if (data.profilePhoto == null) {
                return SizedBox(
                  child: AppNameAvatar(
                    name: data.name ?? "",
                    fontSize: Responsive.isMobile(context) ? 16 : 20,
                    radius: Responsive.isMobile(context) ? 18 : 30,
                  ),
                );
              } else {
                return AppNetworkImage(
                  imageUrl: data.profilePhoto ?? "",
                  radius: Responsive.isMobile(context) ? 20 : 30,
                );
              }
            }(),
            const SizedBox(width: AppSize.km),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppSize.width(context) * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              data.name.capitalizeFirstOfEach(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ks / 3),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${data.gender.capitalizeFirstOfEach()}, ${_formateAge(
                                    context,
                                    day: data.dayOfBirth,
                                    mon: data.monthOfBirth,
                                    year: data.yearOfBirth,
                                  )}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: AppColor.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSize.km),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AutoSizeText(
                            "PID ${data.patientId ?? ""}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.black.withOpacity(0.5),
                            ),
                          ),
                          const SizedBox(height: AppSize.ks / 2),
                          AutoSizeText(
                            "${data.phoneNumber}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Visibility(
                        visible: data.patientId != null,
                        child: AutoSizeText(
                          data.parentPatientId == null
                              ? loc.vgPrimary
                              : loc.vgDependent,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: data.parentPatientId == null
                                ? AppColor.green
                                : AppColor.orange,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.ks),
                  Row(
                    mainAxisAlignment: Responsive.isMobile(context)
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap:
                            data.patientId == null ? null : onStartAssessment,
                        child: Text(
                          loc.vgStartAssessment,
                          textAlign: TextAlign.center,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: data.patientId == null
                                ? AppColor.grey
                                : AppColor.primary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.ks
                            : AppSize.km,
                      ),
                      Visibility(
                        visible: data.parentPatientId == null,
                        child: InkWell(
                          onTap: onAddMember,
                          child: Row(
                            children: [
                              const SizedBox(width: AppSize.ks / 2),
                              const Icon(
                                Icons.add,
                                size: 14,
                                color: AppColor.primary,
                              ),
                              const SizedBox(width: AppSize.ks / 2),
                              Text(
                                loc.vgAddMember,
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Visibility(
                          visible: data.patientId == null,
                          child: InkWell(
                            onTap: onCompleteProfile,
                            child: Row(
                              children: [
                                const SizedBox(width: AppSize.ks / 2),
                                const Icon(
                                  Icons.edit,
                                  size: 14,
                                  color: AppColor.primary,
                                ),
                                const SizedBox(width: AppSize.ks / 2),
                                Text(
                                  loc.vgCompleteProfile,
                                  textAlign: TextAlign.center,
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: AppColor.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
        padding: const EdgeInsets.all(AppSize.km),
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: applycustomShadow(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: AppSize.width(context) * 0.27,
              child: Row(
                children: [
                  () {
                    if (data.profilePhoto == null) {
                      return SizedBox(
                        child: AppNameAvatar(
                          name: data.name ?? "",
                          fontSize: Responsive.isMobile(context) ? 16 : 20,
                          radius: Responsive.isMobile(context) ? 18 : 30,
                        ),
                      );
                    } else {
                      return AppNetworkImage(
                        imageUrl: data.profilePhoto ?? "",
                        radius: Responsive.isMobile(context) ? 20 : 30,
                      );
                    }
                  }(),
                  SizedBox(
                    width: AppSize.width(context) * 0.015,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        data.name.capitalizeFirstOfEach(),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: AppSize.height(context) * 0.005,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${data.gender.capitalizeFirstOfEach()}, ",
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            _formateAge(
                              context,
                              day: data.dayOfBirth,
                              mon: data.monthOfBirth,
                              year: data.yearOfBirth,
                            ),
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "${data.phoneNumber}",
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.1,
              child: Visibility(
                visible: data.patientId != null,
                child: Text(
                  data.parentPatientId == null
                      ? loc.vgPrimary
                      : loc.vgDependent,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: data.parentPatientId == null
                        ? AppColor.green
                        : AppColor.orange,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: data.patientId == null ? null : onStartAssessment,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColor.primary,
                        border: Border.all(color: AppColor.primary, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        loc.vgStartAssessment,
                        textAlign: TextAlign.center,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: data.parentPatientId == null,
                    child: InkWell(
                      onTap: onAddMember,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.primary, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: AppSize.ks / 2),
                            const Icon(
                              Icons.add,
                              size: 14,
                              color: AppColor.primary,
                            ),
                            const SizedBox(width: AppSize.ks / 2),
                            Text(
                              loc.vgAddMember,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: data.patientId == null,
                    child: InkWell(
                      onTap: onCompleteProfile,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.primary, width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: AppSize.ks / 2),
                            const Icon(
                              Icons.add,
                              size: 14,
                              color: AppColor.primary,
                            ),
                            const SizedBox(width: AppSize.ks / 2),
                            Text(
                              loc.vgCompleteProfile,
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  String _formateAge(
    BuildContext context, {
    required String? day,
    required String? mon,
    required String? year,
  }) {
    // calculate age with try catch
    final loc = context.loc!;
    try {
      final dateOfBirth = DateTime(
        int.parse(year ?? "0"),
        int.parse(mon ?? "0"),
        int.parse(day ?? "0"),
      );
      return "${calculateAge(dateOfBirth)} ${loc.vgSlideAge}";
    } catch (e) {
      return "0 ${loc.vgSlideAge}";
    }
  }
}
