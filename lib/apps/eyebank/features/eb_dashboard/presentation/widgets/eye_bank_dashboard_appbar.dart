import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EyeBankDashboardAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const EyeBankDashboardAppbar({
    super.key,
    this.onProfileTap,
    this.onSearchTap,
  });

  final VoidCallback? onProfileTap;
  final VoidCallback? onSearchTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.white,
      elevation: 0,
      title: () {
        if (Responsive.isMobile(context)) {
          return Image.asset(
            AppImages.logo,
            height: 25,
          );
        } else {
          return null;
        }
      }(),
      actions: [
        InkWell(
          onTap: onSearchTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 16),
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
