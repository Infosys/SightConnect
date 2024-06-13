import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class TissueReturnFormSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const TissueReturnFormSection(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        initiallyExpanded: true,
        iconColor: AppColor.black,
        textColor: AppColor.black,
        title: Text(title),
        children: [
          AppCard(
            margin: null,
            child: Wrap(
              spacing: 62,
              runSpacing: 16,
              runAlignment: WrapAlignment.start,
              alignment: WrapAlignment.start,
              children: children,
            ),
          )
        ]);
  }
}
