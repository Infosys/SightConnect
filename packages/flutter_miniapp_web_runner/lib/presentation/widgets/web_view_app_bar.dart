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
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
        onPressed: onBack,
      ),
      toolbarHeight: 45,
      leadingWidth: 25,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          title ?? "",
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
