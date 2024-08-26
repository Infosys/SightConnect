import 'package:dynamic_form/shared/utlities/responsive.dart';
import 'package:flutter/material.dart';

class AppResponsiveWidget extends StatelessWidget {
  final Widget widget;

  const AppResponsiveWidget({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width;
        if (Responsive.isMobile(context)) {
          width = constraints.maxWidth; // Full width on mobile
        }
        // else if (widget is FormCheckbox ||
        //     widget is FormFile ||
        //     widget is FormSwitch ||
        //     widget is FormRadio ||
        //     widget is FormTextArea ||
        //     widget is FormChip) {
        //   width = constraints.maxWidth * 0.5;
        // }

        else {
          width = constraints.maxWidth * 0.3;
        }

        return Container(
          width: width,
          padding: const EdgeInsets.only(right: 16),
          child: widget,
        );
      },
    );
  }
}
