import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TumblingDirectionCard extends StatelessWidget {
  const TumblingDirectionCard({
    super.key,
    required this.symbolImage,
    required this.handImage,
    required this.rotationAngle,
  });

  final String symbolImage;
  final String handImage;
  final double rotationAngle;

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
