import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'dart:js';

class TimelineProfile extends ConsumerWidget {
  const TimelineProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    VTPatientModel? patient =
        ref.watch(registerNewPatientProvider).patientDetails;

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
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Wrap(
            spacing: Responsive.isTablet(context) ? 0 : AppSize.klwidth * 4.5,
            children: [
              SizedBox(
                width: Responsive.isTablet(context)
                    ? AppSize.width(context) / 2
                    : AppSize.width(context) / 2,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(130),
                    child: Image.asset(
                      AppImages.raghavi,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.kmpadding),
                    child: Text(
                      "${patient?.firstName} ${patient?.lastName}",
                      style: applyFiraSansFont(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: AppColor.white),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.kmpadding),
                    child: Text(
                      "PID: OP ${patient?.patientId}",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
              ),
              Wrap(
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 10,
                    children: [
                      Wrap(
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
                              )),
                          const SizedBox(
                            width: AppSize.ksheight,
                          ),
                          Text(
                            "${patient?.mobileNo.toString()}",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: AppSize.ksheight,
                      ),
                      Wrap(
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
                            "${patient?.email}",
                            softWrap: true,
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
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "View Family",
                  style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
