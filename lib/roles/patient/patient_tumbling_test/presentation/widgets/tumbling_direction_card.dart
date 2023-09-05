// import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
            Flexible(
              child: Transform.rotate(
                angle: rotationAngle,
                child: SvgPicture.asset(
                  symbolImage,
                  height: AppSize.height(context) * 0.179, //140
                  // width: 70,
                ),
              ),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.05, //20
            ),
            Flexible(
              child: SvgPicture.asset(
                handImage,
                height: AppSize.height(context) * 0.128, //100
                // width: 60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
