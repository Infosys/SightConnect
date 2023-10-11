// ignore_for_file: constant_identifier_names
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

enum TumblingDirection {
  Up,
  Down,
  Left,
  Right,
}

class TumblingDirectionRow extends StatelessWidget {
  final int currentIndex;

  const TumblingDirectionRow({super.key, required this.currentIndex});

  TumblingDirection getDirection(int index) {
    switch (index) {
      case 0:
        return TumblingDirection.Up;
      case 1:
        return TumblingDirection.Down;
      case 2:
        return TumblingDirection.Left;
      case 3:
        return TumblingDirection.Right;
      default:
        return TumblingDirection
            .Up;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: Row(
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
            getDirection(currentIndex).toString().split('.').last,
            style: applyRobotoFont(
              fontSize: 32,          
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
