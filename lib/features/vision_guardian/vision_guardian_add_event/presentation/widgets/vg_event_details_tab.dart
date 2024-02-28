import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';

class EventDetailsTab extends ConsumerWidget {
  const EventDetailsTab({super.key, required this.eventDetails});

  final VisionGuardianEventModel eventDetails;

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

    logger.d(eventDetails.images);
    final loc = context.loc!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.kspadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: AppSize.height(context) / 3,
              decoration: eventDetails.images != null
                  ? BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage(_getImageUrl(eventDetails.images![0])),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(AppSize.kmradius),
                    )
                  : BoxDecoration(
                      color: AppColor.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(AppSize.kmradius),
                    ),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: AppColor.black.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.kmradius),
                        bottomRight: Radius.circular(AppSize.kmradius),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 15,
                              color: AppColor.white,
                            ),
                            const SizedBox(
                              width: AppSize.kswidth - 5,
                            ),
                            Text(
                              "$startDateformattedDate - $endDateformattedDate",
                              style: applyRobotoFont(
                                fontSize: 14,
                                color: AppColor.white,
                              ),
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
                                  size: 15,
                                  color: AppColor.white,
                                ),
                                const SizedBox(
                                  width: AppSize.kswidth - 5,
                                ),
                                Text(
                                  "$startformattedTime - $endTimeformattedTime",
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                  ),
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
                                eventDetails.eventStatus ?? "",
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
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            aboutDetails(eventDetails.description ?? "", context),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            locationDetails(eventDetails.addresses![0], context),
            const SizedBox(
              height: AppSize.kmheight,
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: null,
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
                      loc.vgEditEvent,
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
                      ref
                          .read(addEventDetailsProvider)
                          .deleteEventDetails(
                              eventId: eventDetails.id.toString())
                          .then((statusCode) {
                        if (statusCode >= 200 && statusCode < 210) {
                          Fluttertoast.showToast(
                              msg: loc.vgEventDeletedSuccessfully);
                          ref
                              .read(addEventDetailsProvider)
                              .filterListEvents(0, "");
                          Navigator.pop(context);
                        } else {
                          Fluttertoast.showToast(
                              msg: loc.vgEventDeletionFailed);
                        }
                      }).catchError((error) {
                        Fluttertoast.showToast(msg: loc.vgEventDeletionFailed);
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
                      loc.vgDeleteEvent,
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

Widget locationDetails(
    VisionGuardianEventAddress addressDetails, BuildContext context) {
  final loc = context.loc!;
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
            Text(loc.vgLocation,
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Text(
                loc.vgViewOnMap,
                style: applyRobotoFont(color: AppColor.primary, fontSize: 14),
              ),
            )
          ]),
          const SizedBox(
            height: AppSize.kmheight,
          ),
          Text(
            loc.vgAddressAndDoorNumber,
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
          const SizedBox(
            height: AppSize.ksheight - 5,
          ),
          Text(
            addressDetails.addressLine1 ?? "",
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
                      loc.vgPincode,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.pinCode ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Text(
                      loc.vgSubDistrictName,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.subDistrict ?? "",
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
                      loc.vgVillageName,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.city ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight,
                    ),
                    Text(
                      loc.vgDistrictName,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ksheight - 5,
                    ),
                    Text(
                      addressDetails.district ?? "",
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

Widget aboutDetails(String description, BuildContext context) {
  final loc = context.loc!;
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
          Text(loc.vgAbout,
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
                  loc.vgViewAll,
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

String _getImageUrl(VisionGuardianEventImage image) {
  String imageUrl = "${image.baseUrl}${image.endpoint}";
  return imageUrl;
}
