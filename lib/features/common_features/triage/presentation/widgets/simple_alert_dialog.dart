import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SimpleAlertDialog extends StatelessWidget {
  final String _title;
  final String _description;
  final String _positiveButtonLabel;
  final String _negativeButtonLabel;
  final VoidCallback _onPositiveButtonClick;
  final VoidCallback _onNegativeButtonClick;

  const SimpleAlertDialog({
    required String title,
    required String description,
    required String positiveButtonLabel,
    required String negativeButtonLabel,
    required VoidCallback onPositiveButtonClick,
    required VoidCallback onNegativeButtonClick,
  })  : _title = title,
        _description = description,
        _positiveButtonLabel = positiveButtonLabel,
        _negativeButtonLabel = negativeButtonLabel,
        _onPositiveButtonClick = onPositiveButtonClick,
        _onNegativeButtonClick = onNegativeButtonClick;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.kmradius),
        ),
        elevation: AppSize.kselevation,
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _title,
              style: applyFiraSansFont(fontSize: 24),
            ),
            const SizedBox(height: AppSize.ksheight),
            Text(
              _description,
              style: applyRobotoFont(fontSize: 14),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: _onNegativeButtonClick,
                  child: Text(_negativeButtonLabel),
                ),
                TextButton(
                  onPressed: _onPositiveButtonClick,
                  child: Text(_positiveButtonLabel),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
