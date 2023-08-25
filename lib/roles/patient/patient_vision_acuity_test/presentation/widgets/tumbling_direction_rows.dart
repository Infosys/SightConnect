import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TumblingDirectionRow extends StatelessWidget {
  final int currentIndex;

  const TumblingDirectionRow({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    String getDirectionText(int index) {
      switch (index) {
        case 0:
          return "UP";
        case 1:
          return "DOWN";
        case 2:
          return "LEFT";
        case 3:
          return "RIGHT";
        default:
          return "";
      }
    }

    return Row(
      children: [
        Text(
          "Symbol Direction: ",
          style: applyRobotoFont(
            fontSize: 18,
            color: const Color(0xFF888888),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "${getDirectionText(currentIndex)}",
          style: applyRobotoFont(
            fontSize: 32,
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
