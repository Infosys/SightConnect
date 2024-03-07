import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
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
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        if (index == data.length) {
          return const Padding(
            padding: EdgeInsets.all(AppSize.klpadding),
            child: CircularProgressIndicator.adaptive(),
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
                },
              );
            } catch (e) {
              Fluttertoast.showToast(msg: loc.vtServiceNotAvailable);
            }
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: AppSize.kmheight);
      },
      itemCount: response.length,
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      padding: const EdgeInsets.all(AppSize.kmpadding),
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
          const SizedBox(width: AppSize.kmpadding),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      data.name.capitalizeFirstOfEach(),
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " PID ${data.patientId ?? ""}, ",
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.ksheight / 2),
                Row(
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
                    Text(
                      ", ${data.phoneNumber}",
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.ksheight / 2),
                Row(
                  mainAxisAlignment: Responsive.isMobile(context)
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: data.patientId == null ? null : onStartAssessment,
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
                          ? AppSize.kspadding
                          : AppSize.kmpadding,
                    ),
                    Visibility(
                      visible: data.parentPatientId == null,
                      child: InkWell(
                        onTap: onAddMember,
                        child: Row(
                          children: [
                            const SizedBox(width: AppSize.kspadding / 2),
                            const Icon(
                              Icons.add,
                              size: 14,
                              color: AppColor.primary,
                            ),
                            const SizedBox(width: AppSize.kspadding / 2),
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
                    Visibility(
                      visible: data.patientId == null,
                      child: InkWell(
                        onTap: onCompleteProfile,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.edit,
                              size: 14,
                              color: AppColor.primary,
                            ),
                            const SizedBox(width: AppSize.kspadding / 2),
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
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: data.patientId != null,
            child: Text(
              data.parentPatientId == null ? loc.vgPrimary : loc.vgDependent,
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
    );
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
