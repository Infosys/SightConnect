import 'package:dynamic_form/shared/utlities/responsive.dart';
import 'package:flutter/material.dart';

class AppResponsiveWidget extends StatelessWidget {
  final Widget widget;

  const AppResponsiveWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (Responsive.isMobile(context)) {
          return SizedBox(
            width: constraints.maxWidth,
            child: widget,
          );
        } else {
          return Container(
            width: constraints.maxWidth * 0.33,
            padding: const EdgeInsets.only(right: 16),
            child: widget,
          );
        }
      },
    );
  }
}
