/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.onBackPress,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingWidth = 56.0,
    this.titleSpacing,
    this.centerTitle = true,
    this.automaticallyImplyLeading = true,
    this.iconTheme = const IconThemeData(color: AppColor.black),
    this.actionsIconTheme = const IconThemeData(color: AppColor.black),
    this.backgroundColor = Colors.transparent,
    this.preferredSizeHeight = 60,
  });

  final VoidCallback? onBackPress;
  final Widget? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;
  final double leadingWidth;
  final double? titleSpacing;
  final bool centerTitle;
  final IconThemeData iconTheme;
  final IconThemeData actionsIconTheme;
  final Color backgroundColor;
  final bool automaticallyImplyLeading;
  final double preferredSizeHeight;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    double appBarHeight = preferredSizeHeight;
    if (isMobile) {
      appBarHeight = 56.0;
    } else {
      appBarHeight = 80.0;
    }

    return AppBar(
      titleSpacing: titleSpacing,
      leadingWidth: leadingWidth,
      backgroundColor: backgroundColor,
      titleTextStyle: applyFiraSansFont(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: centerTitle,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      elevation: 0,
      leading: leadingIcon ??
          IconButton(
            splashRadius: 20,
            onPressed: () {
              onBackPress?.call();
              Navigator.of(context).pop();
            },
            icon: const Icon(CupertinoIcons.back),
          ),
      title: title,
      actions: actions,
      toolbarHeight: appBarHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(preferredSizeHeight);
}
