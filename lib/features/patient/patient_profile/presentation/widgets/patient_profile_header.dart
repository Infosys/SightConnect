import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({
    super.key,
    required this.patient,
  });
  final PatientResponseModel patient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dob = _formateAge(
      day: patient.profile?.patient?.dayOfBirth ?? "",
      mon: patient.profile?.patient?.monthOfBirth ?? "",
      year: patient.profile?.patient?.yearOfBirth ?? "",
    );
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: patient.profile?.patient?.profilePhoto != null
                  ? AppNetworkImage(
                      radius: 70,
                      shapeCircle: false,
                      imageUrl: patient.profile!.patient!.profilePhoto!,
                    )
                  : AppNameAvatar(
                      name: patient.profile?.patient?.name,
                      color: AppColor.blue,
                      radius: 30,
                      fontSize: 20,
                    ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          patient.profile?.patient?.name ?? "",
                          maxLines: 1,
                          style: applyFiraSansFont(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final navigator = Navigator.of(context);
                          navigator
                              .push<bool?>(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PatientRegistrationMiniappPage(
                                    actionType: MiniAppActionType.UPDATE,
                                    displayName: "Update Profile",
                                  ),
                                ),
                              )
                              .then(
                                (value) =>
                                    ref.invalidate(getPatientProfileProvider),
                              );
                        },
                        icon: Container(
                          padding: const EdgeInsets.all(AppSize.kspadding - 2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.primary.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.mode_edit,
                            size: 16,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Text(
                      "PID : ${patient.profile?.patient?.patientId ?? ""}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "Age : $dob",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.kspadding - 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.primary.withOpacity(0.2),
                        ),
                        child: const Icon(
                          Icons.call_outlined,
                          size: 16,
                          color: AppColor.primary,
                        ),
                      ),
                      const SizedBox(width: AppSize.ksheight),
                      Text(
                        patient.profile?.patient?.phoneNumber ?? "",
                        softWrap: true,
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: patient.profile?.patient?.email != null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.kspadding - 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.primary.withOpacity(0.2),
                        ),
                        child: const Icon(
                          Icons.email_outlined,
                          size: 16,
                          color: AppColor.primary,
                        ),
                      ),
                      const SizedBox(width: AppSize.ksheight),
                      Flexible(
                        child: Text(
                          patient.profile?.patient?.email ?? "",
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String _formateAge({
    required String day,
    required String mon,
    required String year,
  }) {
    try {
      var dob = DateTime.parse("$year-$mon-$day");
      var age = DateTime.now().difference(dob).inDays ~/ 365;
      return "$age years";
    } catch (e) {
      return "";
    }
  }
}
