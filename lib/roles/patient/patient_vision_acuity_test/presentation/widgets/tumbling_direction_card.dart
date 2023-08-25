import 'package:flutter/material.dart';

class TumblingDirectionCard extends StatelessWidget {
  const TumblingDirectionCard({
    super.key,
    required this.symbolImage,
    required this.handImage,
    required this.direction,
  });

  final String symbolImage;
  final String handImage;
  final String direction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Image.asset(
              symbolImage,
              height: 200,
            ),
            Image.asset(
              handImage,
              height: 200,
            ),
          ],
        ),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(text: "Symbol Direction:"),
              TextSpan(
                text: direction,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
