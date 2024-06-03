import 'dart:io';
import 'dart:math';

import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';

Future<void> showFeedbackBottomSheet(BuildContext context) async {
  BetterFeedback.of(context).show((feedback) async {
    if (feedback.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Feedback text is required');
      return;
    }

    final tempDir = await getTemporaryDirectory();
    final fileName = '${Random.secure().nextInt(10000)}.png';
    final file = File('${tempDir.path}/$fileName');
    await file.writeAsBytes(feedback.screenshot);
    final subject =
        '${AppInfoService.appName} ${AppInfoService.appVersion} Feedback';

    final Email email = Email(
      body: feedback.text,
      subject: subject,
      recipients: [AppInfoService.appEmail],
      attachmentPaths: [file.path],
    );

    try {
      await FlutterEmailSender.send(email);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to send feedback email');
      debugPrint('Failed to send feedback email: $e');
    }
  });
}
