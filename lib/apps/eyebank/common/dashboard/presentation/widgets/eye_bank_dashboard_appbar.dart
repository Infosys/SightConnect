import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const EyeBankDashboardAppbar({
    super.key,
    this.onProfileTap,
  });

  final VoidCallback? onProfileTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      elevation: 2,
      title: const Text('Eye Bank'),
      actions: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.grey,
              width: 1,
            ),
            shape: BoxShape.circle,
            color: AppColor.white,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.person,
              size: 24,
            ),
            onPressed: onProfileTap,
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  Size get preferredSize {
    if (kIsWeb) {
      return const Size.fromHeight(65);
    } else {
      return const Size.fromHeight(60);
    }
  }
}
