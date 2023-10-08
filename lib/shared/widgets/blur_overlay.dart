import 'dart:ui';

import 'package:flutter/material.dart';

class BlurDialogBox extends StatelessWidget {
  const BlurDialogBox({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });
  final Widget title;
  final Widget content;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog.adaptive(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        insetPadding: EdgeInsets.zero,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }
}
