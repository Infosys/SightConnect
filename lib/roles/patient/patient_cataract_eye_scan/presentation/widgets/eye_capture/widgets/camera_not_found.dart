import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void showCameraNotFound(BuildContext context) {
  showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black38,
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      title: Image.asset('assets/images/warning.png', height: 40, width: 40),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Camera Attachment not Detected",
            style: TextStyle(
                fontStyle: GoogleFonts.firaSans().fontStyle, fontSize: 20),
          ),
          SizedBox(height: 16),
          Text(
            'Connect the device to the mobile using the instructions given in the device.',
            style: TextStyle(
                fontStyle: GoogleFonts.roboto().fontStyle, fontSize: 14),
          )
        ],
      ),
      elevation: 2,
      actions: [
        ElevatedButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
    transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
      child: FadeTransition(
        opacity: anim1,
        child: child,
      ),
    ),
    context: context,
  );
}
