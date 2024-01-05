import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';

class EventDetailsTab extends ConsumerWidget {
  EventDetailsTab({super.key, required this.eventDetails});

  VisionGuardianEventModel eventDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime startDate = DateTime.parse(eventDetails.startDate!);
    DateTime endDate = DateTime.parse(eventDetails.endDate!);
    String startDateformattedDate = DateFormat('dd MMM').format(startDate);
    String endDateformattedDate = DateFormat('dd MMM yyyy').format(endDate);

    DateTime startTime = DateTime.parse(eventDetails.startTime!);
    String startformattedTime = DateFormat('h a').format(startTime);

    DateTime endTime = DateTime.parse(eventDetails.endTime!);
    String endTimeformattedTime = DateFormat('h a').format(endTime);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.kspadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImages.aboutUs,
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month_outlined,
                                color: AppColor.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: AppSize.kswidth - 5,
                              ),
                              Text(
                                "${startDateformattedDate} - ${endDateformattedDate}",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.schedule_outlined,
                                    color: AppColor.white,
                                    size: 15,
                                  ),
                                  const SizedBox(
                                    width: AppSize.kswidth - 5,
                                  ),
                                  Text(
                                    "${startformattedTime} - ${endTimeformattedTime}",
                                    style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    AppSize.klradius,
                                  ),
                                  color: AppColor.orange,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSize.kmpadding, vertical: 3),
                                child: Text(
                                  eventDetails.eventStatus!,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            aboutDetails(eventDetails.description!),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            locationDetails(eventDetails.addresses![0]),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppColor.primary,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSize.klradius,
                        ),
                      ),
                    ),
                    child: Text(
                      "Edit Event",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: AppSize.kmwidth,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      print("object");
                      logger.d(eventDetails.id!);
                      ref
                          .read(addEventDetailsProvider)
                          .deleteEventDetails(
                              eventId: eventDetails.id.toString())
                          .then((statusCode) {
                        if (statusCode >= 200 && statusCode < 210) {
                          ref.read(addEventDetailsProvider).filterListEvents(0, "");
                          Navigator.pop(context);
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSize.klradius,
                        ),
                      ),
                    ),
                    child: Text(
                      "Delete Event",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget locationDetails(VisionGuardianEventAddress addressDetails) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.ksradius),
    ),
    child: Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text("Location",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                "View On Map",
                style: applyRobotoFont(color: AppColor.primary, fontSize: 14),
              ),
            )
          ]),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Text(
            "Address and Door Number",
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
          const SizedBox(
            height: AppSize.ksheight - 5,
          ),
          Text(
            addressDetails.addressLine1!,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pincode",
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.pinCode!,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Text(
                      "Sub District Name",
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.subDistrict!,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Village Name",
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.city!,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Text(
                      "District Name",
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.district!,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget aboutDetails(String description) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.ksradius),
    ),
    child: Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Text(
            description,
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            softWrap: true,
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Text(
                  "View All",
                  style: applyRobotoFont(color: AppColor.primary, fontSize: 14),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
