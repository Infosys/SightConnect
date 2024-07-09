import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.mobileBody,
    this.tabletBody,
    this.desktopBody,
  });

  final Widget mobileBody;
  final Widget? tabletBody;
  final Widget? desktopBody;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 992;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 992;
  static double maxWidth(BuildContext context) =>
      MediaQuery.of(context).size.width > 992
          ? 992
          : MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        if (dimens.maxWidth < 768) {
          return mobileBody;
        } else if (dimens.maxWidth >= 768 && dimens.maxWidth < 992) {
          return tabletBody ?? mobileBody;
        } else {
          return desktopBody ?? mobileBody;
        }
      },
    );
  }
}
