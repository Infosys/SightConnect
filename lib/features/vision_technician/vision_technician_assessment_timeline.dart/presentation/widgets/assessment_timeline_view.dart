import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/data/models/assessment_timeline_view_model.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentTimelineView extends StatefulWidget {
  AssessmentTimelineView({super.key});

  @override
  State<AssessmentTimelineView> createState() => _AssessmentTimelineViewState();
}

class _AssessmentTimelineViewState extends State<AssessmentTimelineView> {
  List<AssessmentTimelineViewModel> timeLineList = [
    AssessmentTimelineViewModel(
        type: "Success",
        title: "2nd Reminder Call",
        subtitle: "Patient Agreed to meet VT",
        date: "16 Sep 2023, 9:30 AM",
        call: "VT Call",
        assessmentId: ""),
    AssessmentTimelineViewModel(
      type: "fail",
      title: "1st Reminder Call",
      subtitle: "No Response from Patient",
      date: "10 Sep 2023, 10:30 AM",
      call: "IVR Call",
      assessmentId: "",
    ),
    AssessmentTimelineViewModel(
      type: "Success",
      title: "Preliminary Assessment",
      subtitle: "Obstructed Vision due to Sticky Discharge.",
      date: "11 Apr 23, 3:30 PM",
      call: "IVR Call",
      assessmentId: "Assessment ID: EA 010101",
    ),
    AssessmentTimelineViewModel(
      type: "Success",
      title: "Patient Registered",
      subtitle: "PID: OP 934567.",
      date: "11 Apr 23, 3:10 PM",
      call: "IVR Call",
      assessmentId: "",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (!alreadyAdded) {
      addToTimeline();
    }
  }

  bool alreadyAdded = false;

  void addToTimeline() {
    alreadyAdded = true;
    timeLineList.insert(
      0,
      AssessmentTimelineViewModel(
        type: "Success",
        title: "Case Closed",
        subtitle: "",
        date: "11 Apr 23, 3:30 PM",
        call: "",
        assessmentId: "",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: timeLineList[index].type == "Success"
                    ? AppColor.altGreen
                    : AppColor.red,
              ),
            ),
            child: timeLineList[index].type == "Success"
                ? const Icon(
                    Icons.check,
                    color: AppColor.altGreen,
                    size: 20,
                  )
                : const Icon(
                    Icons.close,
                    color: AppColor.red,
                    size: 20,
                  ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timeLineList[index].title,
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.black,
                ),
              ),
              Text(
                timeLineList[index].date,
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Responsive.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          timeLineList[index].subtitle,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                          ),
                        ),
                        TimeWidgetRender(context, timeLineList[index], index)
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            timeLineList[index].subtitle,
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
                          ),
                          TimeWidgetRender(context, timeLineList[index], index)
                        ]),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ],
          ),
        );
      },
      itemCount: 4,
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSize.kspadding + 2,
          ),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: index.isEven ? AppColor.altGreen : AppColor.lightGrey,
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

Widget TimeWidgetRender(
    context, AssessmentTimelineViewModel timeLine, int index) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      if (timeLine.call.isNotEmpty)
        Row(
          children: [
            const Icon(
              Icons.add_call,
              size: 20,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            Text(
              timeLine.call,
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
      if (timeLine.assessmentId != "")
        InkWell(
          onTap: () {},
          child: Row(
            children: [
              const Icon(
                Icons.file_open,
                size: 20,
              ),
              const SizedBox(
                width: AppSize.kswidth,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return VisionTechnicianAssessmentReportPage();
                    },
                  ));
                },
                child: Text(
                  timeLine.assessmentId,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.blue,
                      decoration: TextDecoration.combine(
                        [
                          TextDecoration.underline,
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
    ],
  );
}
