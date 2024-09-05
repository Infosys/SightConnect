import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/data/models/menu_item.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeBankBottomNav extends StatelessWidget {
  const EyeBankBottomNav({
    super.key,
    required this.onSelected,
    required this.items,
    required this.initialIndex,
  });

  final Function(int index) onSelected;
  final List<MenuItem> items;
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: true,
      backgroundColor: Colors.white,
      elevation: 8.0,
      iconSize: 22.0,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      selectedIconTheme: const IconThemeData(color: AppColor.primary),
      selectedLabelStyle: applyRobotoFont(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 12,
      ),
      mouseCursor: SystemMouseCursors.click,
      unselectedLabelStyle: applyRobotoFont(
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        fontSize: 12,
      ),
      unselectedItemColor: AppColor.grey,
      selectedItemColor: AppColor.primary,
      type: BottomNavigationBarType.fixed,
      items: items
          .map(
            (item) => BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(
                  item.icon,
                ),
              ),
              tooltip: item.title,
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(item.icon),
              ),
              label: item.title,
            ),
          )
          .toList(),
      currentIndex: initialIndex,
      onTap: (index) {
        onSelected(index);
      },
    );
  }
}
