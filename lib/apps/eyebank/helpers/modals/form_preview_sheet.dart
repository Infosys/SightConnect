import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';

void showCustomWoltSheet(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return _ResponsiveDialog(child: child);
    },
  );
}

class _ResponsiveDialog extends StatefulWidget {
  final Widget child;

  const _ResponsiveDialog({required this.child});

  @override
  __ResponsiveDialogState createState() => __ResponsiveDialogState();
}

class __ResponsiveDialogState extends State<_ResponsiveDialog> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        bool isMobile = Responsive.isMobile(context);

        return Align(
          alignment: isMobile ? Alignment.bottomCenter : Alignment.centerRight,
          child: Container(
            width: isMobile
                ? width
                : (Responsive.isTablet(context) ? width * 0.8 : width * 0.6),
            height: isMobile ? height * 0.9 : height,
            color: Colors.white,
            child: Theme(
              data: AppTheme.getLightTheme(context).copyWith(
                scaffoldBackgroundColor: AppColor.white,
              ),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}
