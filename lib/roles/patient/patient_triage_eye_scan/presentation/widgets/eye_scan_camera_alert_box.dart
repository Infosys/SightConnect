import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EyeScanCameraAlertBox extends StatelessWidget {
  const EyeScanCameraAlertBox({
    super.key,
    this.title,
    this.message,
    this.onOkCallBack,
  });
  final String? title;
  final String? message;
  final VoidCallback? onOkCallBack;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.klradius),
      ),
      title: Text(title ?? ""),
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
          onPressed: () => onOkCallBack ?? Navigator.of(context).pop(),
          child: const Text("OK"),
        ),
      ],
    );
  }
}
