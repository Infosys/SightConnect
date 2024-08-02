import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const EyeBankDashboardAppbar({
    super.key,
    this.onNotificationTap,
    this.onSettingsTap,
  });

  final VoidCallback? onNotificationTap;
  final VoidCallback? onSettingsTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      elevation: 2,
      title: const Text('Eye Bank'),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            size: 24,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.settings,
            size: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    if (kIsWeb) {
      return const Size.fromHeight(60);
    } else {
      return const Size.fromHeight(60);
    }
  }
}
