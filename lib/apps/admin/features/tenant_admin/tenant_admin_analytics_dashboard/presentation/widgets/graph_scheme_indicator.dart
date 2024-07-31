import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:superapp_scanner/constants/app_size.dart';

class GraphSchemeIndicator extends StatelessWidget {
  final List<GraphSchemeIndicatorData> graphSchemeIndicatorData;
  final bool isVertical;

  const GraphSchemeIndicator({
    super.key,
    required this.graphSchemeIndicatorData,
    this.isVertical = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget buildVerticalIndicator(List<GraphSchemeIndicatorData> data) {
      return Column(
        children: data
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: AppSize.ks),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.square_rounded,
                      color: e.color,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Flexible(
                        child: Text(
                      e.title,
                      style: applyRobotoFont(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                  ],
                ),
              ),
            )
            .toList(),
      );
    }

    Widget buildHorizontalIndicator(List<GraphSchemeIndicatorData> data) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: data
            .map(
              (e) => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.square_rounded,
                    color: e.color,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                      child: Text(
                    e.title,
                    style: applyRobotoFont(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                  const SizedBox(width: 10),
                ],
              ),
            )
            .toList(),
      );
    }

    return isVertical
        ? buildVerticalIndicator(graphSchemeIndicatorData)
        : buildHorizontalIndicator(graphSchemeIndicatorData);
  }
}

class GraphSchemeIndicatorData {
  final String title;
  final Color color;

  const GraphSchemeIndicatorData({
    required this.title,
    required this.color,
  });
}
