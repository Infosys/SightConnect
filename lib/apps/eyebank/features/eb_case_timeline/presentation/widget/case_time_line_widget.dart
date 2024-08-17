import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/widget/case_timline_helper.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseTimeLineWidget extends StatelessWidget {
  final List<EBTimelineEntity> caseTimeLine;
  final Function(EBTimelineEntity)? onCaseSelected;
  final bool isNested;

  const CaseTimeLineWidget({
    super.key,
    required this.caseTimeLine,
    this.onCaseSelected,
    this.isNested = false,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: isNested
            ? const EdgeInsets.symmetric(horizontal: 4.0)
            : const EdgeInsets.symmetric(horizontal: 16.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodeItemOverlap: true,
            indicatorTheme: const IndicatorThemeData(size: 18.0),
            connectorTheme: isNested
                ? const ConnectorThemeData(thickness: 1.0)
                : const ConnectorThemeData(thickness: 2.0),
          ),
          builder: TimelineTileBuilder.connected(
            contentsAlign: ContentsAlign.basic,
            contentsBuilder: (context, index) {
              final event = caseTimeLine[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CaseHeader(
                    event: event,
                    index: index,
                    isNested: isNested,
                    caseTimeLine: caseTimeLine,
                  ),
                  CompletedCard(
                    event: event,
                    isNested: isNested,
                    onTap: () => onCaseSelected?.call(event),
                  ),
                  if (event.subStages?.isNotEmpty ?? false)
                    SizedBox(
                      child: CaseTimeLineWidget(
                        caseTimeLine: event.subStages ?? [],
                        onCaseSelected: onCaseSelected,
                        isNested: true,
                      ),
                    ),
                ],
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
      ),
    );
  }
}
