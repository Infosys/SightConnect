import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DesktopClipper extends StatelessWidget {
  const DesktopClipper({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      return child;
    }
    return Container(
      color: AppColor.scaffold,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1600),
          child: child,
        ),
      ),
    );
  }
}
