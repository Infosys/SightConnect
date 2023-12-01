import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/color_dot.dart';
import 'package:flutter/material.dart';

class AgeCard extends StatelessWidget {
  const AgeCard(this.color, this.data, {super.key});
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.kmheight * 2,
      width: AppSize.klwidth * 5,
      alignment: Alignment.center,
      child: Row(
        children: [ColorDot(color: color), Text(data)],
      ),
    );
  }
}
