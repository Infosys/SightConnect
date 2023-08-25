import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TumblingDirectionCard extends StatelessWidget {
  const TumblingDirectionCard(
      {super.key,
      required this.symbolImage,
      required this.handImage,
      required this.rotationAngle});

  final String symbolImage;
  final String handImage;
  final double rotationAngle;

   static List<String> handImagePaths = [
    "assets/images/swipe up.svg",
    "assets/images/swipe down.svg",
    "assets/images/swipe left.svg",
    "assets/images/swipe right.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const SizedBox(width: 5),
            Transform.rotate(
              angle: rotationAngle,
              child: SvgPicture.asset(
                symbolImage,
                height: 140,
                width: 80,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SvgPicture.asset(
              handImage,
              height: 140,
              width: 60,
            ),
          ],
        ),
      ],
    );
  }
}
