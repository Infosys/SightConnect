import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimelineProfile extends ConsumerWidget {
  const TimelineProfile({
    super.key,
    required this.model,
  });
  final VTPatientDto model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      child: Container(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        width: AppSize.width(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppNameAvatar(
              name: model.name ?? "",
              fontSize: 28,
              radius: 40,
            ),
            const SizedBox(width: AppSize.klwidth),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyFiraSansFont(
                      fontSize: 24,
                      color: AppColor.white,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "PID: OP ${model.id ?? ""}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
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
                      const SizedBox(width: AppSize.klheight),
                      Text(
                        model.mobile ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.white,
                        ),
                      ),
                      const SizedBox(width: AppSize.klwidth * 3),
                    ],
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.kspadding),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                        child: const Icon(
                          Icons.cake_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: AppSize.klwidth),
                      Text(
                        "${model.dayOfBirth}/${model.monthOfBirth}/${model.yearOfBirth}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
