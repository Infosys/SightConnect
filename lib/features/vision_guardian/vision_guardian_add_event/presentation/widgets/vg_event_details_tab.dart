import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';

class EventDetailsTab extends StatelessWidget {
  const EventDetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                          Text(
                            "17 Dec - 18 Dec 23",
                            style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "9AM - 4PM",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
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
                                  "Upcoming",
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
              height: AppSize.klheight,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                    "We are conducting a free eye checkup drive in Eye Camp in KV Gachibowli Area of Hyderabad where we will be conducting eye test for all people and easy …",
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
                          style: applyRobotoFont(
                              color: AppColor.primary, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
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
                        style: applyRobotoFont(
                            color: AppColor.primary, fontSize: 14),
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
                    "15 / 128, Dada Sahib Street",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.black,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.ksheight,
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
                              "508021",
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
                              "Sector 51",
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
                              "Ameerpet",
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
                              "Gachibowli",
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
                  const SizedBox(
                    height: AppSize.klheight,
                  ),
                ],
              ),
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
                    onPressed: () {},
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
