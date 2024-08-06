import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CaseTimeLineWidget extends StatelessWidget {
  final List<Map<String, String>> caseTimeLine;
  const CaseTimeLineWidget({
    super.key,
    required this.caseTimeLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          color: Colors.blue,
          indicatorTheme: const IndicatorThemeData(
            position: 0,
            size: 20.0,
          ),
          connectorTheme: const ConnectorThemeData(
            thickness: 2.5,
          ),
        ),
        builder: TimelineTileBuilder.fromStyle(
          contentsBuilder: (context, index) {
            final event = caseTimeLine[index];
            final status = event['status'];
            final isCompleted = status == 'completed';
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        event['serviceRequestCode'] ?? 'Unknown',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      // Chip(
                      //   label: Text(
                      //     status ?? 'Unknown',
                      //     style: TextStyle(
                      //         color: isCompleted ? Colors.white : Colors.black,
                      //         fontSize: 12),
                      //   ),
                      //   backgroundColor:
                      //       isCompleted ? Colors.green : Colors.red,
                      // ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(event['description'] ?? 'No description'),
                          const SizedBox(height: 8),
                          Text(event['timestamp'] ?? 'No timestamp'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          indicatorStyle: IndicatorStyle.dot,
          itemCount: caseTimeLine.length,
        ),
      ),
    );
  }
}
