import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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

  @override
  Widget build(BuildContext context) {
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
              Navigator.of(context).pop();
              onBackPress?.call();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
