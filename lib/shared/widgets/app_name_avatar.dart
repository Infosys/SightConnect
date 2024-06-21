import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppNameAvatar extends StatelessWidget {
  const AppNameAvatar({
    super.key,
    required this.name,
    this.radius = 18,
    this.fontSize = 14,
    this.color = const Color(0xffD4C1FF),
    this.fontColor = AppColor.black,
    this.isShapeCircular = true,
  });
  final String? name;
  final double radius;
  final Color color;
  final Color fontColor;
  final double fontSize;
  final bool isShapeCircular;

  @override
  Widget build(BuildContext context) {
    if (!isShapeCircular) {
      return Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            (name != null) ? getNameInitials(name) : "",
            style: applyRobotoFont(
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
              color: fontColor,
            ),
          ),
        ),
      );
    }
    return CircleAvatar(
      backgroundColor: color,
      radius: radius,
      child: Text(
        name != null ? getNameInitials(name) : "",
        style: applyRobotoFont(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: fontColor,
        ),
      ),
    );
  }

  String getNameInitials(String? name) {
    if (name == null || name.isEmpty) {
      return "";
    }
    final nameSplit = name.split(" ");
    if (nameSplit.length > 1) {
      return nameSplit[0][0].toUpperCase() + nameSplit[1][0].toUpperCase();
    } else {
      return nameSplit[0][0].toUpperCase();
    }
  }
}
