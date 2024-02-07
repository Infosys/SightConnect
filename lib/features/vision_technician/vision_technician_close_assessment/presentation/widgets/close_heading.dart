import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CloseHeading extends StatelessWidget {
  const CloseHeading({
    super.key,
    this.encountedId,
  });
  final int? encountedId;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Close: ",
          style: applyFiraSansFont(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Assessment EA $encountedId",
          style: applyFiraSansFont(fontSize: 24),
        ),
      ],
    );
  }
}
