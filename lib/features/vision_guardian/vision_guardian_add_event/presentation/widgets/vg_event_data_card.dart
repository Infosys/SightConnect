import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

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
    String startDateString = DateTime.parse(data.startDate!).formateDate2;
    String endDateString = DateTime.parse(data.endDate!).formateDate2;

    String startTimeString = DateTime.parse(data.startDate!).formateTime;
    String endTimeString = DateTime.parse(data.endDate!).formateTime;

    return Container(
      width: Responsive.isMobile(context)
          ? AppSize.width(context) * 0.95
          : AppSize.width(context) * 0.95,
      height: Responsive.isMobile(context)
          ? AppSize.height(context) * 0.18
          : AppSize.height(context) * 0.24,
      margin: const EdgeInsets.symmetric(vertical: AppSize.ks),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSize.km - 5),
                bottomLeft: Radius.circular(AppSize.km - 5),
              ),
              child: AppNetworkImage(
                borderRadius: 0,
                imageUrl: _getImageUrl(data.images!.first),
                shapeCircle: false,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                            const SizedBox(height: AppSize.ks / 2),
                            Text(
                              "ID ${data.id ?? ""}",
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: applyRobotoFont(
                                fontSize: 10,
                                color: AppColor.darkGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.km,
                          vertical: AppSize.ks / 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSize.kl,
                          ),
                          color: _getEvenStatusColor(data.eventStatus),
                        ),
                        child: Text(
                          data.eventStatus ?? "",
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: applyRobotoFont(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.ks),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: AppColor.grey,
                        size: 14,
                      ),
                      const SizedBox(width: AppSize.ks / 2),
                      AutoSizeText(
                        '$startDateString - $endDateString',
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
                  const SizedBox(height: AppSize.ks / 2),
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: AppColor.grey,
                        size: 14,
                      ),
                      const SizedBox(width: AppSize.ks / 2),
                      AutoSizeText(
                        '$startTimeString - $endTimeString',
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
                  const SizedBox(height: AppSize.ks),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          _getAddress(data.addresses),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 12,
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

  String _toTitleCase(String text) {
    if (text.isEmpty) return text;
    return text.split(' ').map((word) {
      if (word.isEmpty) return word;
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  String _getAddress(List<VisionGuardianEventAddress>? address) {
    if (address != null && address.isNotEmpty) {
      final addr = address.first;
      return "${_toTitleCase(addr.addressLine1 ?? "")}, ${_toTitleCase(addr.city ?? "")}, ${_toTitleCase(addr.state ?? "")}, ${addr.pinCode}";
    }
    return "";
  }

  _getEvenStatusColor(String? value) {
    return switch (value) {
      "CANCELLED" => AppColor.red,
      "MOVED_ONLINE" => AppColor.orange,
      "RESCHEDULED" => AppColor.yellow,
      "SCHEDULED" => AppColor.blue,
      "CREATED" => AppColor.primary,
      "ACTIVE" => AppColor.green,
      _ => AppColor.grey,
    };
  }
}

String _getImageUrl(VisionGuardianEventImage image) {
  String imageUrl = "${image.baseUrl}${image.endpoint}";
  return imageUrl;
}
