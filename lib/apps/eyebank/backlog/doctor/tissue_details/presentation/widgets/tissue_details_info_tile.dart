import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TissueDetailsInfoTile extends StatelessWidget {
  final String title;
  final String? value;
  final double maxwidth;
  final double minwidth;

  const TissueDetailsInfoTile({
    super.key,
    required this.title,
    this.value,
    this.maxwidth = 150,
    this.minwidth = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: maxwidth,
        minWidth: minwidth,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
          Text(
            value ?? '--',
            style: applyRobotoFont(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
