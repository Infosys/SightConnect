import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_info_tile.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseTimeLineWidget extends StatelessWidget {
  final dynamic caseTimeLine;
  final Function(dynamic)? onCaseSelected;

  const CaseTimeLineWidget({
    super.key,
    required this.caseTimeLine,
    this.onCaseSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
            final status = event['status'];
            final isCompleted = status == 'COMPLETED' || status == 'ACTIVE';

            return Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(event, index),
                  if (isCompleted)
                    _buildCompletedCard(
                      event,
                      () => onCaseSelected?.call(event),
                    ),
                ],
              ),
            );
          },
          indicatorBuilder: (context, index) =>
              _buildIndicator(caseTimeLine[index]),
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

  Widget _buildHeader(dynamic event, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Text(
            event['serviceRequestCode'] ?? 'Unknown',
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

  Widget _buildCompletedCard(dynamic event, VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                CaseInfoTile(
                  title: 'Description',
                  value: event['description'],
                ),
                const SizedBox(height: 8),
                CaseInfoTile(
                  title: 'Timestamp',
                  value: event['timestamp']?.split('T').first,
                ),
                const SizedBox(height: 8),
                CaseInfoTile(
                  title: 'Status',
                  value: event['status'],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget? _buildIndicator(dynamic event) {
    final status = event['status'];
    if (status == 'COMPLETED') {
      return const DotIndicator(
        color: AppColor.green,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 12.0,
        ),
      );
    } else if (status == 'ACTIVE') {
      return const DotIndicator(
        color: AppColor.primary,
        child: Icon(
          Icons.more_horiz,
          color: Colors.white,
          size: 12.0,
        ),
      );
    } else if (status == 'PENDING') {
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

  Widget? _buildConnector(dynamic event) {
    final status = event['status'];
    if (status == 'COMPLETED') {
      return const SolidLineConnector(color: AppColor.green);
    } else if (status == 'ACTIVE') {
      return const SolidLineConnector(color: AppColor.primary);
    } else if (status == 'PENDING') {
      return const SolidLineConnector(color: AppColor.lightGrey);
    }
    return null;
  }
}
