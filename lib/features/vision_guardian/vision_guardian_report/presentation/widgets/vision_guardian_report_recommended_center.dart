import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianReportRecommendedCenter extends ConsumerWidget {
  const VisionGuardianReportRecommendedCenter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Center",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.ksheight),
        Container(
          width: AppSize.width(context),
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: applyLightShadow(),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            ),
          ),
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: RecommendationPhoneNumber(
            children: [
              Text(
                "LVPEI Eye Institute",
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.location_on_outlined, color: AppColor.grey),
                  SizedBox(
                    width: AppSize.width(context) / 1.3,
                    child: Text(
                      "-",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.kmheight),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.phone_outlined, color: AppColor.grey),
                      Text(
                        "-",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Flexible(
                        child: Icon(
                          Icons.access_time_rounded,
                          color: AppColor.grey,
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width(context) / 1.3,
                        child: Text(
                          "Monday - Friday, 10:00 AM to 5:00 PM" ?? "",
                          // softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendationPhoneNumber extends ConsumerWidget {
  const RecommendationPhoneNumber({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Responsive.isMobile(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: children)
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }
}
