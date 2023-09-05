import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = "Eye Care For All",
    this.actions,
    this.showBackButton = true,
  });

  final String title;
  final List<Widget>? actions;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Responsive.isMobile(context)
          ? const Size.fromHeight(56.0)
          : const Size.fromHeight(64.0),
      child: AppBar(
        elevation: 0,
        leading: showBackButton
            ? IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
        title: Text(title),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
