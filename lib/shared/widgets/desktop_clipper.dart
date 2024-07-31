import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DesktopClipper extends StatelessWidget {
  const DesktopClipper({super.key, required this.widget});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return widget;
    }
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.pink,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(maxWidth: 1400),
        child: widget,
      ),
    );
  }
}
