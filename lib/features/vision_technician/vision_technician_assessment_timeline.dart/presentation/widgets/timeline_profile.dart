import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:js';

class TimelineProfile extends ConsumerWidget {
  const TimelineProfile({super.key, required this.model});
  final ProfileModel model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // VTPatientModel? patient =
    //     ref.watch(registerNewPatientProvider).patientDetails;

    // if (patient == null) return SizedBox();

       var dateYear = DateTime.now().year;
    
    int giveAge() {
      var age = int.parse(model?.patient?.yearOfBirth ?? "");
      return (dateYear - age).toInt();
    }

    String genderString = model!.patient!.gender.toString().split('.').last;
    final address = _formateAddress(
      line: model.patient?.address?.first.line ?? "",
      ward: model.patient?.address?.first.ward ?? "",
      district: model.patient?.address?.first.district ?? "",
      state: model.patient?.address?.first.state ?? "",
    );

    String profileImage = model.patient?.profilePhoto ?? "";

    return Container(
      padding: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        boxShadow: applyLightShadow(),
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(AppImages.profileBg),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.klradius),
        ),
      ),
      child: SizedBox(
        width: AppSize.width(context),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const CircleAvatar(radius: AppSize.klradius),
              const SizedBox(width: AppSize.kswidth),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "${model.patient?.name}",
                  // softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white.withOpacity(0.8)),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  "PID: OP ${model.patient?.abhaNumber}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white.withOpacity(0.8),
                  ),
                ),
              ]),
              const SizedBox(width: AppSize.klwidth),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.kspadding),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                        child: const Icon(
                          Icons.call_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.ksheight,
                      ),
                      Text(
                        model.patient?.phoneNumber ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(width: AppSize.klwidth * 3),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Family",
                          style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.kspadding),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                        child: const Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.kswidth,
                      ),
                      Text(
                        model.patient?.email ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _formateAddress({
  required String line,
  required String ward,
  required String district,
  required String state,
}) {
  return "$line, $ward, $district, $state";
}
