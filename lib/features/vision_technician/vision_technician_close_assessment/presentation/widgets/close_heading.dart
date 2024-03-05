import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CloseHeading extends StatelessWidget {
  const CloseHeading({
    super.key,
    this.encountedId,
  });
  final int? encountedId;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Row(
      children: [
        Text(
          "${loc.vtClose}: ",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Flexible(
          child: Text(
            "${loc.vtAssessmentEA} $encountedId",
            style: applyFiraSansFont(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
