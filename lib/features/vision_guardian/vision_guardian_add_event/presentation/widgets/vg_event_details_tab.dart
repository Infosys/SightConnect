import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_patients_tab.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import 'vg_event_teammates_tab.dart';

class EventDetailsTab extends HookConsumerWidget {
  const EventDetailsTab({super.key, required this.eventDetails});

  final VisionGuardianEventModel eventDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  EventPatientsTab(patientsType: "default")
    //              EventTeammatesTab()
    // var isTeammate = useState<bool>(false);
    // var isPatientDetail = useState<bool>(true);
    // var isEventDetails = useState<bool>(false);
    DateTime startDate = DateTime.parse(eventDetails.startDate!);
    DateTime endDate = DateTime.parse(eventDetails.endDate!);
    String startDateformattedDate = DateFormat.yMMMMd().format(startDate);
    String endDateformattedDate = DateFormat.yMMMMd().format(endDate);

    DateTime startTime = DateTime.parse(eventDetails.startTime!);
    String startformattedTime = DateFormat.jm().format(startTime);

    DateTime endTime = DateTime.parse(eventDetails.endTime!);
    String endTimeformattedTime = DateFormat.jm().format(endTime);

    logger.d(eventDetails.images);
    final loc = context.loc!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.ks),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: AppSize.height(context) * 0.3,
              decoration: eventDetails.images != null
                  ? BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            _getImageUrl(
                              eventDetails.images![0],
                            ),
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(AppSize.km),
                    )
                  : BoxDecoration(
                      color: AppColor.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(AppSize.km),
                    ),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: AppColor.black.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(AppSize.km),
                        bottomRight: Radius.circular(AppSize.km),
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
                              width: AppSize.ks - 5,
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
                                  width: AppSize.ks - 5,
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
                            Chip(
                              label: Text(
                                eventDetails.eventStatus ?? "",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.white,
                                ),
                              ),
                              backgroundColor: _getEvenStatusColor(
                                eventDetails.eventStatus,
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(
                            //       AppSize.kl,
                            //     ),
                            //     color: _getEvenStatusColor(
                            //       eventDetails.eventStatus,
                            //     ),
                            //   ),
                            //   padding: const EdgeInsets.symmetric(
                            //     horizontal: AppSize.km,
                            //     vertical: 3,
                            //   ),
                            //   child: Text(
                            //     eventDetails.eventStatus ?? "",
                            //     style: applyRobotoFont(
                            //       fontSize: 14,
                            //       fontWeight: FontWeight.w500,
                            //       color: AppColor.white,
                            //     ),
                            //   ),
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: AppSize.km,
            ),

            Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.grey.withOpacity(0.2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const ExpansionTile(
                // childrenPadding: EdgeInsets.all(16),
                title: Text("Add Members"),
                visualDensity: VisualDensity.compact,
                children: [
                  EventTeammatesTab(),
                ],
              ),
            ),

            const SizedBox(
              height: AppSize.ks,
            ),

            Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.grey.withOpacity(0.2),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ExpansionTile(
                visualDensity: VisualDensity.compact,
                childrenPadding: const EdgeInsets.symmetric(
                  horizontal: AppSize.km,
                  vertical: AppSize.ks,
                ),
                title: const Text("Event Details"),
                children: [
                  aboutDetails(eventDetails.description ?? "", context),
                  const SizedBox(
                    height: AppSize.km,
                  ),
                  locationDetails(eventDetails.addresses![0], context),
                  const SizedBox(
                    height: AppSize.km,
                  ),
                  Row(
                    children: [
                      // Expanded(
                      //   child: OutlinedButton(
                      //     onPressed: null,
                      //     style: OutlinedButton.styleFrom(
                      //       side: const BorderSide(
                      //         color: AppColor.primary,
                      //       ),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(
                      //           AppSize.kl,
                      //         ),
                      //       ),
                      //     ),
                      //     child: Text(
                      //       loc.vgEditEvent,
                      //       style: applyRobotoFont(
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w500,
                      //         color: AppColor.primary,
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      // const SizedBox(
                      //   width: AppSize.km,
                      // ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            SharedPreferenceService.clearEventId();
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
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VisionGuardianDashboardPage(),
                                  ),
                                  (route) => false,
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg: loc.vgEventDeletionFailed);
                              }
                            }).catchError((error, stackTrace) {
                              logger.e("${error}, ${stackTrace}");
                              Fluttertoast.showToast(
                                  msg: loc.vgEventDeletionFailed);
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                AppSize.kl,
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
                  ),
                ],
              ),
            ),

            // const EventPatientsTab(patientsType: "default"),

            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            // InkWell(
            //   onTap: () {
            //     if (isPatientDetail.value == true) {
            //       isPatientDetail.value = false;
            //     } else {
            //       isTeammate.value = false;
            //       isPatientDetail.value = true;
            //       isEventDetails.value = false;
            //     }
            //   },
            //   child: Container(
            //     width: AppSize.width(context) / 3.5,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(AppSize.ks),
            //       color: AppColor.primary,
            //     ),
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: AppSize.km,
            //       vertical: AppSize.ks,
            //     ),
            //     child: Center(
            //       child: Flexible(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               "Your\nAssessments",
            //               style: applyRobotoFont(
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500,
            //                 color: AppColor.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            // InkWell(
            //   onTap: () {
            //     if (isTeammate.value == true) {
            //       isTeammate.value = false;
            //     } else {
            //       isTeammate.value = true;
            //       isPatientDetail.value = false;
            //       isEventDetails.value = false;
            //     }
            //   },
            //   child: Container(
            //     width: AppSize.width(context) / 3,
            //     height: AppSize.height(context) / 12,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(AppSize.ks),
            //       color:
            //           isTeammate.value ? AppColor.primary : AppColor.white,
            //       border: Border.all(
            //         color: AppColor.primary,
            //       ),
            //     ),
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: AppSize.km,
            //       vertical: AppSize.ks,
            //     ),
            //     child: Center(
            //       child: Flexible(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               "Add\nTeammates",
            //               style: applyRobotoFont(
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500,
            //                 color: isTeammate.value
            //                     ? AppColor.white
            //                     : AppColor.primary,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // InkWell(
            //   onTap: () {
            //     if (isEventDetails.value == true) {
            //       isEventDetails.value = false;
            //     } else {
            //       isTeammate.value = false;
            //       isPatientDetail.value = false;
            //       isEventDetails.value = true;
            //     }
            //   },
            //   child: Container(
            //     width: AppSize.width(context) / 3,
            //     height: AppSize.height(context) / 12,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(AppSize.ks),
            //       color: isEventDetails.value
            //           ? AppColor.primary
            //           : AppColor.white,
            //       border: Border.all(
            //         color: AppColor.primary,
            //       ),
            //     ),
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: AppSize.km,
            //       vertical: AppSize.ks,
            //     ),
            //     child: Center(
            //       child: Flexible(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               "Event\nDetails",
            //               style: applyRobotoFont(
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500,
            //                 color: isEventDetails.value
            //                     ? AppColor.white
            //                     : AppColor.primary,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // )
            //   ],
            // ),
            // const SizedBox(
            //   height: AppSize.km,
            // ),
            // Visibility(
            //   visible: isTeammate.value,
            //   child: const Column(
            //     children: [EventTeammatesTab()],
            //   ),
            // ),
            // Visibility(
            //   visible: isEventDetails.value,
            //   child: Column(
            //     children: [
            //       aboutDetails(eventDetails.description ?? "", context),
            //       const SizedBox(
            //         height: AppSize.km,
            //       ),
            //       locationDetails(eventDetails.addresses![0], context),
            //       const SizedBox(
            //         height: AppSize.km,
            //       ),
            //       Row(
            //         children: [
            //           Expanded(
            //             child: OutlinedButton(
            //               onPressed: null,
            //               style: OutlinedButton.styleFrom(
            //                 side: const BorderSide(
            //                   color: AppColor.primary,
            //                 ),
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(
            //                     AppSize.kl,
            //                   ),
            //                 ),
            //               ),
            //               child: Text(
            //                 loc.vgEditEvent,
            //                 style: applyRobotoFont(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.w500,
            //                   color: AppColor.primary,
            //                 ),
            //               ),
            //             ),
            //           ),
            //           const SizedBox(
            //             width: AppSize.km,
            //           ),
            //           Expanded(
            //             child: ElevatedButton(
            //               onPressed: () {
            //                 ref
            //                     .read(addEventDetailsProvider)
            //                     .deleteEventDetails(
            //                         eventId: eventDetails.id.toString())
            //                     .then((statusCode) {
            //                   if (statusCode >= 200 && statusCode < 210) {
            //                     Fluttertoast.showToast(
            //                         msg: loc.vgEventDeletedSuccessfully);
            //                     ref
            //                         .read(addEventDetailsProvider)
            //                         .filterListEvents(0, "");
            //                     Navigator.pop(context);
            //                   } else {
            //                     Fluttertoast.showToast(
            //                         msg: loc.vgEventDeletionFailed);
            //                   }
            //                 }).catchError((error, stackTrace) {
            //                   logger.e("${error}, ${stackTrace}");
            //                   Fluttertoast.showToast(
            //                       msg: loc.vgEventDeletionFailed);
            //                 });
            //               },
            //               style: ElevatedButton.styleFrom(
            //                 backgroundColor: AppColor.red,
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(
            //                     AppSize.kl,
            //                   ),
            //                 ),
            //               ),
            //               child: Text(
            //                 loc.vgDeleteEvent,
            //                 style: applyRobotoFont(
            //                   fontSize: 14,
            //                   fontWeight: FontWeight.w500,
            //                   color: AppColor.white,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            const SizedBox(
              height: AppSize.km,
            ),
            const Text(
              "Assessments",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: AppSize.km,
            ),
            const EventPatientsTab(patientsType: "default"),
          ],
        ),
      ),
    );
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

Widget locationDetails(
    VisionGuardianEventAddress addressDetails, BuildContext context) {
  final loc = context.loc!;
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppSize.ks),
    ),
    child: Padding(
      padding: const EdgeInsets.all(AppSize.km),
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
            // InkWell(
            //   onTap: () {},
            //   child: Text(
            //     loc.vgViewOnMap,
            //     style: applyRobotoFont(color: AppColor.primary, fontSize: 14),
            //   ),
            // )
          ]),
          const SizedBox(
            height: AppSize.km,
          ),
          Text(
            loc.vgAddressAndDoorNumber,
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
          const SizedBox(
            height: AppSize.ks - 5,
          ),
          Text(
            addressDetails.addressLine1 ?? "",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
          const SizedBox(
            height: AppSize.km,
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
                      height: AppSize.ks - 5,
                    ),
                    Text(
                      addressDetails.pinCode ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ks,
                    ),
                    Text(
                      loc.vgSubDistrictName,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ks - 5,
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
                      height: AppSize.ks - 5,
                    ),
                    Text(
                      addressDetails.city ?? "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ks,
                    ),
                    Text(
                      loc.vgDistrictName,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.ks - 5,
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
      borderRadius: BorderRadius.circular(AppSize.ks),
    ),
    child: Padding(
      padding: const EdgeInsets.all(AppSize.km),
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
            height: AppSize.km,
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
            height: AppSize.ks,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // InkWell(
              //   child: Text(
              //     loc.vgViewAll,
              //     style: applyRobotoFont(color: AppColor.primary, fontSize: 14),
              //   ),
              // )
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
