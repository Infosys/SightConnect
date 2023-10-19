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
  });

  final VoidCallback? onBackPress;
  final Widget? leadingIcon;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleTextStyle: applyFiraSansFont(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColor.black),
      actionsIconTheme: const IconThemeData(color: AppColor.black),
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
