import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_info_tile.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseTimeLineWidget extends StatelessWidget {
  final dynamic caseTimeLine;
  const CaseTimeLineWidget({
    super.key,
    required this.caseTimeLine,
    this.onCaseSelected,
  });

  final Function(dynamic)? onCaseSelected;

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
            final isCompleted = status == 'COMPLETED';
            return Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
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
                        Visibility(
                          visible: index == caseTimeLine.length - 1,
                          child: Padding(
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
                        ),
                      ],
                    ),
                  ),
                  isCompleted
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
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
                                    value: status,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            );
          },
          indicatorBuilder: (context, index) {
            final event = caseTimeLine[index];
            final status = event['status'];
            final isCompleted = status == 'COMPLETED';
            final isActive = status == 'ACTIVE';
            final isPending = status == 'PENDING';

            if (isCompleted) {
              return const DotIndicator(
                color: AppColor.green,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 12.0,
                ),
              );
            } else if (isActive) {
              return const DotIndicator(
                color: AppColor.primary,
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 12.0,
                ),
              );
            } else if (isPending) {
              return const DotIndicator(
                color: AppColor.grey,
                child: Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 12.0,
                ),
              );
            }
            return null;
          },
          connectorBuilder: (context, index, type) {
            final event = caseTimeLine[index];
            final status = event['status'];
            final isCompleted = status == 'COMPLETED';
            final isActive = status == 'ACTIVE';
            final isPending = status == 'PENDING';
            if (isCompleted) {
              return const SolidLineConnector(color: AppColor.green);
            } else if (isActive) {
              return const SolidLineConnector(color: AppColor.primary);
            } else if (isPending) {
              return const SolidLineConnector(color: AppColor.grey);
            }
            return null;
          },
          firstConnectorBuilder: (context) {
            return const DashedLineConnector(color: Colors.grey);
          },
          itemCount: caseTimeLine.length,
          indicatorPositionBuilder: (context, index) => 0,
          nodePositionBuilder: (context, index) => 0,
        ),
      ),
    );
  }
}
