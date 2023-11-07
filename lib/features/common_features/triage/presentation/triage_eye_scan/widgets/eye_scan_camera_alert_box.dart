import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EyeScanCameraAlertBox extends StatelessWidget {
  const EyeScanCameraAlertBox({
    super.key,
    this.title,
    this.buttonText,
    this.message,
    this.onOkCallBack,
  });
  final String? title;
  final String? buttonText;
  final String? message;
  final VoidCallback? onOkCallBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.klradius),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message ?? "",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            onOkCallBack?.call();
          },
          child: Text(buttonText!),
        ),
      ],
    );
  }
}
