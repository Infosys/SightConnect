import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VCListTile extends StatelessWidget {
  const VCListTile({
    super.key,
    required this.title,
    this.icon,
    this.style,
  });
  final String title;
  final IconData? icon;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Visibility(
            visible: icon != null,
            child: Icon(
              icon,
              size: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: style ??
                  applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.darkGrey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
