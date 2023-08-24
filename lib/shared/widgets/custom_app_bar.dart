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
    return AppBar(
       backgroundColor: Colors.white.withOpacity(0),
       elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 32,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      title: Text(title),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
