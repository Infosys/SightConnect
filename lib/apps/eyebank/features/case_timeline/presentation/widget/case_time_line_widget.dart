import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
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
                  CaseHeader(
                    event: event,
                    index: index,
                    caseTimeLine: caseTimeLine,
                  ),
                  if (isCompleted && event.subSteps.isEmpty)
                    CompletedCard(
                      event: event,
                      onTap: () => onCaseSelected?.call(event),
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
              CaseIndicator(event: caseTimeLine[index]),
          connectorBuilder: (context, index, type) =>
              CaseConnector(event: caseTimeLine[index]),
          firstConnectorBuilder: (context) =>
              const DashedLineConnector(color: Colors.grey),
          itemCount: caseTimeLine.length,
          indicatorPositionBuilder: (context, index) => 0,
          nodePositionBuilder: (context, index) => 0,
        ),
      ),
    );
  }
}

class CaseHeader extends StatelessWidget {
  final EBTimeLineCaseModel event;
  final int index;
  final List<EBTimeLineCaseModel> caseTimeLine;

  const CaseHeader({
    super.key,
    required this.event,
    required this.index,
    required this.caseTimeLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Row(
        children: [
          Text(
            event.stageName.name.toUpperCase(),
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.bold,
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
}

class CaseConnector extends StatelessWidget {
  final EBTimeLineCaseModel event;

  const CaseConnector({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
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

class CompletedCard extends StatelessWidget {
  final EBTimeLineCaseModel event;
  final VoidCallback? onTap;

  const CompletedCard({super.key, required this.event, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 8.0,
        ),
        padding: const EdgeInsets.all(16.0),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoColumn(
                  icon: Icons.date_range,
                  label: "Start Date",
                  value: event.initiateDate.formateDate,
                ),
                _buildInfoColumn(
                  icon: Icons.update,
                  label: "Last Modified",
                  value: event.recentUpdatedTime.formateDate,
                ),
                _buildInfoColumn(
                  icon: Icons.check_circle,
                  label: "Status",
                  value: event.status.name,
                  valueColor: event.status.name == "COMPLETED"
                      ? Colors.green
                      : Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoColumn({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 14.0, color: Colors.grey),
            const SizedBox(width: 4.0),
            Text(
              label,
              style: applyRobotoFont(
                fontSize: 8,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          value,
          style: applyRobotoFont(
            fontSize: 10,
            color: valueColor ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class CaseIndicator extends StatelessWidget {
  final EBTimeLineCaseModel event;

  const CaseIndicator({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
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
    return const DotIndicator(
      color: Colors.grey,
      child: Icon(
        Icons.error,
        color: Colors.white,
        size: 12.0,
      ),
    );
  }
}
