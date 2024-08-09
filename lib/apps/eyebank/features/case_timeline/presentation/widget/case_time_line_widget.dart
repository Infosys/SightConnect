import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_info_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/inner_timeline.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseTimeLineWidget extends StatelessWidget {
  final List<EBTimeLineCaseModel> caseTimeLine;
  final Function(EBTimeLineCaseModel)? onCaseSelected;

  const CaseTimeLineWidget({
    super.key,
    required this.caseTimeLine,
    this.onCaseSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          color: Colors.grey,
          indicatorTheme: const IndicatorThemeData(
            position: 0,
            size: 20.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 2.5,
          ),
        ),
        builder: TimelineTileBuilder.connected(
          contentsBuilder: (context, index) {
            final event = caseTimeLine[index];
            final status = event.status;
            final isCompleted = status == EBCaseStatus.COMPLETED ||
                status == EBCaseStatus.IN_PROGRESS;

            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(event, index),
                  if (isCompleted && event.subSteps.isEmpty)
                    buildCompletedCard(
                      event,
                      () => onCaseSelected?.call(event),
                    ),
                  if (event.subSteps.isNotEmpty)
                    Expanded(
                      child: InnerTimeline(
                        substep: event.subSteps,
                      ),
                    ),
                ],
              ),
            );
          },
          indicatorBuilder: (context, index) =>
              buildIndicator(caseTimeLine[index]),
          connectorBuilder: (context, index, type) =>
              _buildConnector(caseTimeLine[index]),
          firstConnectorBuilder: (context) =>
              const DashedLineConnector(color: Colors.grey),
          itemCount: caseTimeLine.length,
          indicatorPositionBuilder: (context, index) => 0,
          nodePositionBuilder: (context, index) => 0,
        ),
      ),
    );
  }

  Widget _buildHeader(EBTimeLineCaseModel event, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        children: [
          Text(
            event.stageName.name.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          if (index == caseTimeLine.length - 1)
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'END',
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildConnector(EBTimeLineCaseModel event) {
    final EBCaseStatus status = event.status;
    if (status == EBCaseStatus.COMPLETED) {
      return const SolidLineConnector(
        color: AppColor.green,
      );
    } else if (status == EBCaseStatus.IN_PROGRESS) {
      return const SolidLineConnector(
        color: AppColor.primary,
      );
    } else if (status == EBCaseStatus.PENDING) {
      return SolidLineConnector(
        color: AppColor.grey.withOpacity(0.5),
      );
    }
    return const SolidLineConnector(color: Colors.grey);
  }
}

Widget buildCompletedCard(EBTimeLineCaseModel event, VoidCallback? onTap) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CaseInfoTile(
                title: 'Start Date',
                value: event.initiateDate.formateDate,
              ),
              const SizedBox(height: 8),
              CaseInfoTile(
                title: 'Last Modified Time',
                value: event.recentUpdatedTime.formateDate,
              ),
              // const SizedBox(height: 8),
              // CaseInfoTile(
              //   title: 'Status',
              //   value: event.status.displayValue.toUpperCase(),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget? buildIndicator(EBTimeLineCaseModel event) {
  final EBCaseStatus status = event.status;
  if (status == EBCaseStatus.COMPLETED) {
    return const DotIndicator(
      color: AppColor.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 12.0,
      ),
    );
  } else if (status == EBCaseStatus.IN_PROGRESS) {
    return const DotIndicator(
      color: AppColor.primary,
      child: Icon(
        Icons.more_horiz,
        color: Colors.white,
        size: 12.0,
      ),
    );
  } else if (status == EBCaseStatus.PENDING) {
    return DotIndicator(
      color: AppColor.grey.withOpacity(0.5),
      child: const Icon(
        Icons.access_time,
        color: Colors.white,
        size: 12.0,
      ),
    );
  }
  return null;
}
