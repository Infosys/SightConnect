import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/color_dot.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AgeCard extends StatelessWidget {
  const AgeCard(this.color, this.data, {super.key});
  final Color color;
  final String data;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColorDot(color: color),
        Text(
          data,
          style: applyRobotoFont(
            fontSize: isMobile ? 12 : 16,
          ),
        ),
      ],
    );
  }
}
