import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar(
      {super.key, this.title = "My Profile", this.showBackButton = true});

  final String title;
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
                color: Colors.white,
                size: 32,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit_outlined,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
