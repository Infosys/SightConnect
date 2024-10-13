/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
            padding: const EdgeInsets.only(
              left: 16,
              top: 4,
              bottom: 4,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFC9DAFD),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  AppImages.logo,
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
                  left: AppSize.km,
                  right: AppSize.km,
                  top: AppSize.km,
                  bottom: AppSize.ks,
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
                                isShapeCircular: false,
                                name: patient.profile?.patient?.name,
                                color: const Color(0xffD4C1FF),
                                radius: 38,
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
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          patient.profile?.patient?.name
                                                  .capitalizeFirstOfEach() ??
                                              "",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: applyRobotoFont(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Flexible(
                                          child: AutoSizeText(
                                            uniqueId,
                                            maxLines: 1,
                                            minFontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                            style: applyFiraSansFont(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  QrImageView(
                                    padding: EdgeInsets.zero,
                                    data: uniqueId,
                                    version: QrVersions.auto,
                                    size: 50.0,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  patient.profile?.patient?.dobSource ==
                                          DOBSource.CALCULATED
                                      ? infoCard(
                                          "Age",
                                          patient.profile?.patient?.age != null
                                              ? '${patient.profile?.patient?.age} Y'
                                              : '-',
                                          age: true,
                                        )
                                      : infoCard(
                                          context.loc!.profilePageDateOfBirth,
                                          dob),
                                  infoCard(context.loc!.profilePageGender,
                                      patient.profile?.patient?.gender?.name),
                                  infoCard(context.loc!.profilePageMobile,
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
                          "Digital Public Health Stack",
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

  Widget infoCard(
    String? name,
    String? value, {
    bool age = false,
  }) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            name ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 10,
              color: AppColor.darkGrey,
            ),
          ),
          const SizedBox(height: 2),
          AutoSizeText(
            age
                ? (value == null ? "" : value.capitalize())
                : value == null
                    ? ""
                    : value.toLowerCase().capitalize(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
            ),
          ),
        ],
      ),
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
