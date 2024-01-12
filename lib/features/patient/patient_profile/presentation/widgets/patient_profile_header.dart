import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({
    super.key,
    required this.patient,
  });
  final PatientResponseModel patient;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dob = _formateAge(
      day: patient.profile?.patient?.dayOfBirth,
      mon: patient.profile?.patient?.monthOfBirth,
      year: patient.profile?.patient?.yearOfBirth,
    );

    var uniqueId = _eightDigit(patient.profile?.patient?.patientId);
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
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8),
            decoration: const BoxDecoration(
              color: Color(0xFFffdd04),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/logo/app_logo.png",
                  height: 40,
                  width: 120,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  "assets/images/triage_card_bg.svg",
                  width: AppSize.width(context),
                  height: AppSize.height(context) * 0.23,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    AppColor.primary.withOpacity(0.1),
                    BlendMode.srcATop,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: AppSize.kmpadding,
                  right: AppSize.kmpadding,
                  top: AppSize.kmpadding,
                  bottom: AppSize.kspadding,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        patient.profile?.patient?.profilePhoto != null
                            ? AppNetworkImage(
                                radius: 80,
                                shapeCircle: false,
                                imageUrl:
                                    patient.profile!.patient!.profilePhoto!,
                              )
                            : AppNameAvatar(
                                name: patient.profile?.patient?.name,
                                color: AppColor.blue,
                                radius: 28,
                                fontSize: 18,
                              ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        patient.profile?.patient?.name ?? "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: applyRobotoFont(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Flexible(
                                        child: Text(
                                          uniqueId,
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
                                  QrImageView(
                                    padding: EdgeInsets.zero,
                                    data: uniqueId,
                                    version: QrVersions.auto,
                                    size: 60.0,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  infoCard("Date of Birth", dob),
                                  infoCard("Gender",
                                      patient.profile?.patient?.gender?.name),
                                  infoCard("Mobile",
                                      patient.profile?.patient?.phoneNumber),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Powered by",
                          style: applyRobotoFont(
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "Health Connect Tech Stack",
                          style: applyFiraSansFont(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoCard(String? name, String? value) {
    return Column(
      children: [
        Text(
          name ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value == null ? "" : value.toLowerCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  String _eightDigit(int? value) {
    if (value == null) {
      return "-";
    }

    final result = value.toString().padLeft(8, "0").splitMapJoin(
          RegExp(r".{4}"),
          onMatch: (m) => "${m.group(0)} ",
        );
    return "HCSC 0001 $result";
  }

  String _formateAge({
    required String? day,
    required String? mon,
    required String? year,
  }) {
    try {
      if (day == null || mon == null || year == null) {
        return "-";
      }
      return "$day/$mon/$year";
    } catch (e) {
      return "-";
    }
  }
}
