/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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

  static bool isSemiDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1400;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 992;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 992;

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
