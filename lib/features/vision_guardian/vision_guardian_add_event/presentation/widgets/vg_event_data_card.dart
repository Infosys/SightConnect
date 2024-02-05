import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../shared/theme/text_theme.dart';

class VgEventDataCards extends StatelessWidget {
  final VisionGuardianEventModel data;

  const VgEventDataCards({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("dd MMM");
    DateFormat dateFormat2 = DateFormat("dd MMM yy");
    String startDateString = dateFormat.format(
      DateTime.parse(data.startDate!),
    );
    String endDateString = dateFormat2.format(
      DateTime.parse(data.endDate!),
    );

    String startTimeString =
        DateFormat('h a').format(DateTime.parse(data.startTime!));
    String endTimeString =
        DateFormat('h a').format(DateTime.parse(data.endTime!));

    return Container(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.9
          : AppSize.width(context) * 0.9,
      height: Responsive.isMobile(context)
          ? AppSize.height(context) * 0.16
          : AppSize.height(context) * 0.24,
      margin: const EdgeInsets.symmetric(vertical: AppSize.ksheight),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppSize.kmradius - 5),
              bottomLeft: Radius.circular(AppSize.kmradius - 5),
            ),
            child: CachedNetworkImage(
              imageUrl: _getImageUrl(data.images!.first),
              fit: BoxFit.cover,
              width: Responsive.isMobile(context)
                  ? AppSize.width(context) * 0.25
                  : AppSize.width(context) * 0.25,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.60
                        : AppSize.width(context) * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          data.title.capitalize(),
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.kmpadding,
                            vertical: AppSize.kspadding / 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppSize.klradius,
                            ),
                            color: (data.eventStatus ?? "") != "Completed"
                                ? AppColor.orange
                                : AppColor.green,
                          ),
                          child: Text(
                            data.eventStatus ?? "",
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: applyRobotoFont(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "${data.id ?? ""}",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: applyRobotoFont(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  SizedBox(
                    width: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.60
                        : AppSize.width(context) * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: AppColor.grey,
                              size: 14,
                            ),
                            const SizedBox(width: AppSize.kswidth / 2),
                            AutoSizeText(
                              '$startDateString-$endDateString',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: AppSize.kswidth),
                        Row(
                          children: [
                            const Icon(
                              Icons.schedule,
                              color: AppColor.grey,
                              size: 14,
                            ),
                            const SizedBox(width: AppSize.kswidth / 2),
                            AutoSizeText(
                              '$startTimeString-$endTimeString',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: AppColor.grey,
                        size: 14,
                      ),
                      const SizedBox(width: AppSize.kswidth / 2),
                      Flexible(
                        child: AutoSizeText(
                          "${data.addresses?[0].addressLine1},${data.addresses?[0].city},${data.addresses?[0].state},${data.addresses?[0].pinCode}",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _getImageUrl(VisionGuardianEventImage image) {
  String imageUrl = "${image.baseUrl}${image.endpoint}";
  return imageUrl;
}
