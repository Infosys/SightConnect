import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';

import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../shared/theme/text_theme.dart';

class VisionEventListDetails extends ConsumerWidget {
  const VisionEventListDetails({super.key, required this.eventType});
  final String eventType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (eventType == "default") {
      return ref.watch(getEventDetailsProvider).when(data: (eventDetails) {
        if (eventDetails.isEmpty) {
          return SizedBox(
            width: Responsive.isMobile(context)
                ? AppSize.width(context) * 0.9
                : AppSize.width(context) * 0.95,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VisionGuardianEmptyResultCard(type: "Event"),
              ],
            ),
          );
        }
        return Column(children: [
          ...eventDetails.map((event) {
            return InkWell(
              onTap: () {
                ref
                    .read(addEventDetailsProvider)
                    .setEventId(event.id.toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VisionGuardianEventDetailsPage(
                          eventDetails: event);
                    },
                  ),
                );
              },
              child: vgEventDataCards(context, event, ref),
            );
          }),
        ]);
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, error: (error, stackTrace) {
        return const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(type: "Event"),
          ],
        );
      });
    } else {
      var response = ref.watch(addEventDetailsProvider).listOfEventDetails;
      if (response.isEmpty) {
        return SizedBox(
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.9
              : AppSize.width(context) * 0.95,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VisionGuardianEmptyResultCard(type: "Event"),
            ],
          ),
        );
      }
      return Column(
        children: [
          for (int index = 0; index < response.length; index++) ...[
            InkWell(
              onTap: () {
                ref.read(addEventDetailsProvider).setEventId(
                      response[index].id.toString(),
                    );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VisionGuardianEventDetailsPage(
                      eventDetails: response[index],
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSize.kspadding, right: AppSize.kspadding),
                child: vgEventDataCards(context, response[index], ref),
              ),
            ),
          ]
        ],
      );
    }
  }

  Widget vgEventDataCards(
      BuildContext context, VisionGuardianEventModel data, WidgetRef ref) {
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
      margin: const EdgeInsets.symmetric(vertical: AppSize.ksheight),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.ksradius),
        child: Container(
          width: Responsive.isMobile(context)
              ? AppSize.width(context) * 0.9
              : AppSize.width(context) * 0.5,
          height: Responsive.isMobile(context)
              ? AppSize.height(context) / 5.5
              : AppSize.height(context) * 0.1,
          color: AppColor.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: Responsive.isMobile(context)
                        ? AppSize.width(context) * 0.2
                        : AppSize.width(context) * 0.1,
                  ),
                  child: data.images == null
                      ? AppNameAvatar(
                          name: data.title,
                          radius: 0,
                          fontSize: 18,
                        )
                      : AppNetworkImage(
                          shapeCircle: false,
                          radius: Size.infinite.height,
                          imageUrl: _getImageUrl(data.images!.first),
                        )),
              const SizedBox(width: AppSize.kswidth),
              Padding(
                padding: const EdgeInsets.all(AppSize.kspadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isMobile(context)
                          ? AppSize.width(context) * 0.60
                          : AppSize.width(context) * 0.50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data.title ?? "",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.black,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppSize.klradius,
                              ),
                              color: (data.eventStatus ?? "") != "Completed"
                                  ? AppColor.orange
                                  : AppColor.green,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSize.kspadding, vertical: 2),
                            child: Text(
                              data.eventStatus ?? "",
                              softWrap: true,
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
                      data.id.toString(),
                      softWrap: true,
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
                          : AppSize.width(context) * 0.50,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_outlined,
                                color: AppColor.grey,
                                size: 15,
                              ),
                              const SizedBox(
                                width: AppSize.kswidth - 5,
                              ),
                              Text(
                                '$startDateString-$endDateString',
                                softWrap: true,
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Icon(
                                Icons.schedule,
                                color: AppColor.grey,
                                size: 15,
                              ),
                              const SizedBox(
                                width: AppSize.kswidth - 5,
                              ),
                              Text(
                                '$startTimeString-$endTimeString',
                                softWrap: true,
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.ksheight / 3),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSize.ksheight),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: AppColor.grey,
                          size: 15,
                        ),
                        const SizedBox(
                          width: AppSize.kswidth - 5,
                        ),
                        SizedBox(
                          width: AppSize.width(context) * 0.50,
                          child: Text(
                            "${data.addresses?[0].addressLine1},${data.addresses?[0].city},${data.addresses?[0].state},${data.addresses?[0].pinCode}",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColor.grey,
                            ),
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
      ),
    );
  }

  String _getImageUrl(VisionGuardianEventImage image) {
    String imageUrl = "${image.baseUrl}${image.endpoint}";
    return imageUrl;
  }
}
