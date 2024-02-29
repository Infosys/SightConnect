import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPatientInfoCard extends StatelessWidget {
  const RegisterPatientInfoCard({super.key, required this.data});
  final List<VisionGuardianEventPatientResponseModel> data;
  @override
  Widget build(BuildContext context) {
    int index = 0;
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.kspadding),
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kspadding,
        horizontal: AppSize.klpadding,
      ),
      decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: applyLightShadow(),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: data[index].profilePhoto == null ||
                data[index].profilePhoto == "string"
            ? SizedBox(
                child: AppNameAvatar(
                  name: data[index].name ?? "",
                  color: AppColor.blue,
                  fontSize: 16,
                ),
              )
            : AppNetworkImage(imageUrl: data[index].profilePhoto ?? ""),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name.capitalize(),
                    style: applyRobotoFont(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: AppSize.ksheight / 2),
                  Row(
                    children: [
                      Text(
                        "${data[index].phoneNumber}, ",
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.black.withOpacity(0.5),
                        ),
                      ),
                      Text(
                        _formateAge(
                          day: data[index].dayOfBirth,
                          mon: data[index].monthOfBirth,
                          year: data[index].yearOfBirth,
                        ),
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
                      Visibility(
                        visible: data[index].patientId != null,
                        child: Text(
                          data[index].parentPatientId == null
                              ? loc.vtPrimary
                              : loc.vtDependent,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: data[index].parentPatientId == null
                                ? AppColor.green
                                : AppColor.orange,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSize.kspadding),
                      Visibility(
                        visible: data[index].parentPatientId == null,
                        child: InkWell(
                          onTap: () {
                            // This will add family member in the primary account
                            try {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PatientRegistrationMiniappPage(
                                    actionType: MiniAppActionType.ADD_MEMBER,
                                    displayName: loc.vtAddMember,
                                    parentPatientId:
                                        data[index].patientId.toString(),
                                    mobileNumber: data[index].phoneNumber,
                                  ),
                                ),
                              ).then(
                                (value) {
                                  if (value == null || value == false) {
                                    Fluttertoast.showToast(
                                        msg: loc.vtDependentNotAdded);
                                  } else if (value) {
                                    Fluttertoast.showToast(
                                        msg: loc.vtDependentAdded);
                                  }
                                },
                              );
                            } catch (e) {
                              logger.d({"error": e});
                              Fluttertoast.showToast(
                                msg: loc.vtServiceNotAvailable,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add,
                                size: 14,
                                color: AppColor.primary,
                              ),
                              const SizedBox(width: AppSize.kspadding / 2),
                              Text(
                                loc.vtAddMember,
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
                      Visibility(
                        visible: data[index].patientId == null,
                        child: InkWell(
                          onTap: () async {
                            try {
                              Navigator.of(context)
                                  .push<bool?>(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PatientRegistrationMiniappPage(
                                    actionType: MiniAppActionType.REGISTER,
                                    displayName: loc.vtRegisterPatient,
                                    mobileNumber: data[index].phoneNumber,
                                  ),
                                ),
                              )
                                  .then(
                                (value) {
                                  if (value == null || value == false) {
                                    Fluttertoast.showToast(
                                        msg: loc.vtPatientNotRegistered);
                                  } else if (value) {
                                    Fluttertoast.showToast(
                                        msg: loc.vtPatientRegistered);
                                  }
                                },
                              );
                            } catch (e) {
                              logger.d({"error": e});
                              Fluttertoast.showToast(
                                msg: loc.vtServiceNotAvailable,
                              );
                            }
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.edit,
                                size: 14,
                                color: AppColor.primary,
                              ),
                              const SizedBox(width: AppSize.kspadding / 2),
                              Text(
                                loc.vtCompleteProfile,
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
                  )
                ],
              ),
            ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //       onPressed: data[index].patientId == null
            //           ? null
            //           : () {
            //               // Navigator.push(
            //               //   context,
            //               //   MaterialPageRoute(
            //               //     builder: (context) =>
            //               //         VisionGuardianEyeAssessment(
            //               //       patientName: data[index].name ?? "",
            //               //       patientId:
            //               //           data[index].patientId.toString(),
            //               //       triageMode: triageMode,
            //               //     ),
            //               //   ),
            //               // );
            //             },
            //       child: AutoSizeText(
            //         "Start\nAssessment",
            //         minFontSize: 10,
            //         maxFontSize: 14,
            //         textAlign: TextAlign.center,
            //         style: applyRobotoFont(
            //           fontWeight: FontWeight.w500,
            //           color: data[index].patientId == null
            //               ? AppColor.grey
            //               : AppColor.primary,
            //         ),
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  String _formateAge({
    required String? day,
    required String? mon,
    required String? year,
  }) {
    // calculate age with try catch

    try {
      final dateOfBirth = DateTime(
        int.parse(year ?? "0"),
        int.parse(mon ?? "0"),
        int.parse(day ?? "0"),
      );
      return "${calculateAge(dateOfBirth)} Yrs";
    } catch (e) {
      return "0 Yrs";
    }
  }

  int calculateAge(DateTime dateOfBirth) {
    final now = DateTime.now();
    int age = now.year - dateOfBirth.year;
    if (now.month < dateOfBirth.month ||
        (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
      age--;
    }
    return age;
  }
}
