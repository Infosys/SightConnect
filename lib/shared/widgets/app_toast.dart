import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppToast {
  static showToast(
    BuildContext context,
    String message, {
    bool isError = false,
    bool isWarning = false,
    bool isSuccess = false,
  }) {
    final scaffold = ScaffoldMessenger.of(context);

    if (isError) {
      _showErrorToast(scaffold, message);
    } else if (isWarning) {
      _showWarningToast(scaffold, message);
    } else if (isSuccess) {
      _showSuccessToast(scaffold, message);
    } else {
      _showDefaultToast(scaffold, message);
    }
  }

  static _showDefaultToast(ScaffoldMessengerState scaffold, String message) {
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        closeIconColor: AppColor.white,
        showCloseIcon: true,
        content: Text(
          message,
          style: applyRobotoFont(fontSize: 16, color: AppColor.white),
        ),
        backgroundColor: AppColor.black,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static _showErrorToast(ScaffoldMessengerState scaffold, String message) {
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        closeIconColor: AppColor.white,
        showCloseIcon: true,
        content: Text(
          message,
          style: applyRobotoFont(fontSize: 16, color: AppColor.white),
        ),
        backgroundColor: AppColor.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static _showWarningToast(ScaffoldMessengerState scaffold, String message) {
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        closeIconColor: AppColor.white,
        showCloseIcon: true,
        content: Text(
          message,
          style: applyRobotoFont(fontSize: 16, color: AppColor.white),
        ),
        backgroundColor: AppColor.yellow,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  static _showSuccessToast(ScaffoldMessengerState scaffold, String message) {
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        closeIconColor: AppColor.white,
        showCloseIcon: true,
        content: Text(
          message,
          style: applyRobotoFont(fontSize: 16, color: AppColor.white),
        ),
        backgroundColor: AppColor.green,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
