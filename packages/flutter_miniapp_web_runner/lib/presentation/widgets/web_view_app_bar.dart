import 'package:flutter/material.dart';

class WebViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WebViewAppBar({
    super.key,
    this.onBack,
    this.title,
  });

  final VoidCallback? onBack;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      automaticallyImplyLeading: false,
      toolbarHeight: 45,
      leadingWidth: 25,
      titleSpacing: 0,
      leading: IconButton(
        padding: const EdgeInsets.all(0),
        icon: const Icon(
          Icons.keyboard_double_arrow_left,
          size: 20,
          color: Colors.white,
        ),
        onPressed: onBack,
      ),
      title: Text(
        title ?? "",
        style: const TextStyle(fontSize: 14, color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}
