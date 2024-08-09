import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class InnerTimeline extends StatelessWidget {
  final List<EBTimeLineCaseModel> substep;
  const InnerTimeline({
    Key? key,
    required this.substep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          color: Colors.grey,
          indicatorTheme: const IndicatorThemeData(
            position: 0,
            size: 12.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 2.5,
          ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (context, index) => buildIndicator(substep[index]),
          startConnectorBuilder: (_, index) => Connector.solidLine(),
          endConnectorBuilder: (_, index) => Connector.solidLine(),
          contentsBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(substep[index].assessmentName.name),
                  const SizedBox(height: 4.0),
                  buildCompletedCard(
                    substep[index],
                    null,
                  )
                ],
              ),
            );
          },
          itemCount: substep.length,
        ),
      ),
    );
  }
}
