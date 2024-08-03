import 'dart:io';
import 'dart:math';

import 'package:eye_care_for_all/services/app_info_service.dart';
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

    try {
      final Email email = Email(
        body: feedback.text,
        subject: subject,
        recipients: [AppInfoService.appEmail],
        attachmentPaths: [file.path],
      );
      await FlutterEmailSender.send(email);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to send feedback email');
      debugPrint('Failed to send feedback email: $e');
    }
  });
}




  // String? encodeQueryParameters(Map<String, String> params) {
  //       return params.entries
  //           .map((MapEntry<String, String> e) =>
  //               '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
  //           .join('&');
  //     }

  //     final Uri emailLaunchUri = Uri(
  //       scheme: 'mailto',
  //       path: AppInfoService.appEmail,
  //       query: encodeQueryParameters(<String, String>{
  //         'subject': subject,
  //         'body': feedback.text,
  //       }),
  //     );

  //     if (!await launchUrl(emailLaunchUri)) {
  //       Fluttertoast.showToast(msg: 'Failed to launch url');
  //     }