import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../core/models/drawer_menu_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.selectedItem,
    required this.onSelected,
  });
  final DrawerMenuItem selectedItem;
  final Function(DrawerMenuItem) onSelected;

  @override
  Widget build(BuildContext context) {
    var items = DrawerMenuItems.all;
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            const SizedBox(height: AppSize.klheight),
            Text(
              "Menu",
              style: applyFiraSansFont(
                color: AppColor.white,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: AppSize.klheight),
            ...items.map(
              (item) => ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                selectedTileColor: item == selectedItem
                    ? AppColor.white.withOpacity(0.2)
                    : null,
                selected: item == selectedItem,
                selectedColor: AppColor.white,
                onTap: () {
                  onSelected(item);
                },
                leading: Icon(
                  item.icon,
                  color: AppColor.white,
                ),
                title: Text(
                  item.title,
                  style: applyFiraSansFont(
                    color: AppColor.white,
                    fontWeight: item == selectedItem
                        ? FontWeight.w500
                        : FontWeight.normal,
                    fontSize: item == selectedItem ? 18 : 14,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: AppColor.white,
              ),
              title: Text(
                "Sign Out",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
            const Divider(
              color: AppColor.white,
            ),
            ListTile(
              title: Text(
                "App Version 1.0.0",
                style: applyRobotoFont(
                  color: AppColor.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
