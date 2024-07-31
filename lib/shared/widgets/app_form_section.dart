import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';

class AppFormSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const AppFormSection({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
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
          ]),
    );
  }
}
