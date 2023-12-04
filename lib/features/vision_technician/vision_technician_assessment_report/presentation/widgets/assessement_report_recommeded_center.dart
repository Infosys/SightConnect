import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentReportRecommendedCenter extends StatelessWidget {
  const AssessmentReportRecommendedCenter({super.key});

  @override
  Widget build(BuildContext context) {
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
         SizedBox(height: AppSize.klheight),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppSize.kmradius - 5),
              )),
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: Wrap(
            spacing: AppSize.kmheight,
            direction: Axis.vertical,
            children: [
              Text(
                "LVPEI Eye Institute - Chudi Bazaar",
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Wrap(
                spacing: AppSize.kmwidth,
                direction: Axis.horizontal,
                children: [
                  Icon(Icons.location_on_outlined, color: AppColor.grey),
                  SizedBox(
                    width: AppSize.klwidth * 15,
                    child: Text(
                        "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Chudi Bazaar,Hyderabad,Telegana 500012"),
                  ),
                  Wrap(direction: Axis.vertical, children: [
                    Wrap(
                      spacing: AppSize.kmwidth,
                      direction: Axis.horizontal,
                      children: [
                        Icon(Icons.phone_outlined, color: AppColor.grey),
                        SizedBox(
                          width: AppSize.klwidth * 18,
                          child: Text("9963478759"),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: AppSize.kmwidth,
                      direction: Axis.horizontal,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: AppColor.grey,
                        ),
                        SizedBox(
                          width: AppSize.klwidth * 18,
                          child: Text("Monday - Friday 10:00 AM - 5:00 PM"),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
