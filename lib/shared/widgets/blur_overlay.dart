/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:ui';

import 'package:flutter/material.dart';

class BlurDialogBox extends StatelessWidget {
  const BlurDialogBox({
    super.key,
    this.title,
    required this.content,
    required this.actions,
    this.contentPadding =
        const EdgeInsets.only(left: 24.0, top: 16.0, right: 24.0, bottom: 24.0),
    this.insetPadding =
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    this.actionsPadding = const EdgeInsets.symmetric(horizontal: 8.0),
  });
  final Widget? title;
  final Widget content;
  final List<Widget> actions;
  final EdgeInsetsGeometry contentPadding;
  final EdgeInsets insetPadding;
  final EdgeInsetsGeometry actionsPadding;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
      child: AlertDialog(
        actionsPadding: actionsPadding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: contentPadding,
        insetPadding: insetPadding,
        title: title,
        content: content,
        actions: actions,
      ),
    );
  }
}
