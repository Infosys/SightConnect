import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
      elevation: kIsWeb ? 2 : 0,
      title: Text(
        AppInfoService.appName,
        style: applyRobotoFont(
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: AppColor.black,
        ),
      ),
      actions: [
        InkWell(
          onTap: onProfileTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.grey,
                width: 1,
              ),
              shape: BoxShape.circle,
              color: AppColor.white,
            ),
            child: const Icon(
              Icons.person,
              size: 24,
            ),
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
