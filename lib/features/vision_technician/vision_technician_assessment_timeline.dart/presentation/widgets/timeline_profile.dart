import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';

import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class TimelineProfile extends ConsumerWidget {
  const TimelineProfile({
    super.key,
    required this.model,
  });
  final VTPatientDto model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);
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
        padding: isMobile
            ? const EdgeInsets.all(AppSize.kspadding)
            : const EdgeInsets.all(AppSize.kmpadding),
        width: AppSize.width(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppNameAvatar(
              name: model.name ?? "",
              fontSize: isMobile ? 20 : 28,
              radius: isMobile ? 26 : 40,
            ),
            SizedBox(width: isMobile ? AppSize.kmwidth : AppSize.klwidth),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    model.name ?? "",
                    maxLines: 1,
                    maxFontSize: 24,
                    minFontSize: 18,
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
                      fontSize: isMobile ? 12 : 14,
                      color: AppColor.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: isMobile ? AppSize.kmwidth : AppSize.klwidth),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          if (model.mobile?.isEmpty ?? true) {
                            return;
                          }
                          Uri phoneno = Uri.parse("tel:${model.mobile}");
                          await launchUrl(phoneno);
                        },
                        child: Container(
                          padding: isMobile
                              ? const EdgeInsets.all(AppSize.kspadding / 2)
                              : const EdgeInsets.all(AppSize.kspadding),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                            size: isMobile ? 14 : 18,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: isMobile ? AppSize.kswidth : AppSize.klwidth),
                      Text(
                        model.mobile ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: isMobile ? 12 : 14,
                          color: AppColor.white,
                        ),
                      ),
                      Visibility(
                        visible: !isMobile,
                        child: const SizedBox(width: AppSize.klwidth * 3),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Row(
                    children: [
                      Container(
                        padding: isMobile
                            ? const EdgeInsets.all(AppSize.kspadding / 2)
                            : const EdgeInsets.all(AppSize.kspadding),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                        child: Icon(
                          Icons.cake_outlined,
                          color: Colors.white,
                          size: isMobile ? 14 : 18,
                        ),
                      ),
                      SizedBox(
                          width: isMobile ? AppSize.kswidth : AppSize.klwidth),
                      Text(
                        "${model.dayOfBirth}/${model.monthOfBirth}/${model.yearOfBirth}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: isMobile ? 12 : 14,
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
