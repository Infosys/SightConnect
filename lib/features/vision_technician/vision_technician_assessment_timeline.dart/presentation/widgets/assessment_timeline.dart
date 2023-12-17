import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline_view.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentTimeline extends StatelessWidget {
  AssessmentTimeline({super.key});

  var timeLineDate = [
    {"content": "EA 010101 - 11 Apr 23", "active": "1"},
    {"content": "EA 010101 - 11 Apr 23", "active": "0"}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assessment Timeline",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: AppSize.kmheight,
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            for (int index = 0; index < 2; index++) ...[
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: timeLineDate[index]["active"] == "1"
                        ? AppColor.blue
                        : AppColor.white,
                  ),
                  color: timeLineDate[index]["active"] == "1"
                      ? AppColor.lightBlue
                      : AppColor.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  timeLineDate[index]["content"]!,
                  style: applyRobotoFont(
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                width: AppSize.klwidth,
              ),
            ]
          ],
        ),
        const SizedBox(
          height: AppSize.klheight,
        ),
        Container(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSize.width(context)/5,
                    child: Text(
                      "Timeline: EA 010101",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColor.grey,
                      ),
                      color: const Color(0xffFBD5D5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "2nd Reminder Sent",
                      style: applyRobotoFont(
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: AppSize.width(context)/5,
                child: Text(
                  "Start Date: 11 Apr 2023, 10:20 AM",
                  style: applyRobotoFont(
                    color: AppColor.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                   overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                ),
              ),
              const SizedBox(
                height: AppSize.klheight,
              ),
              const Divider(
                thickness: 1,
                color: AppColor.grey,
              ),
              const SizedBox(
                height: AppSize.klheight,
              ),
              AssessmentTimelineView(),
            ],
          ),
        ),
      ],
    );
  }
}
