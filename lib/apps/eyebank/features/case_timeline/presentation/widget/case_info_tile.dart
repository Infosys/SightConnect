import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CaseInfoTile extends StatelessWidget {
  final String title;
  final String? value;
  const CaseInfoTile({super.key, required this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            title,
            style: applyRobotoFont(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            value ?? '--',
            style: applyRobotoFont(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
