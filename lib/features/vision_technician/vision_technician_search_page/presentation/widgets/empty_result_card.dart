import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class EmptyResultCard extends StatelessWidget {
  const EmptyResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.loc!.emptyPatientsInfo,
        textAlign: TextAlign.center,
      ),
    );
  }
}
