import 'package:eye_care_for_all/apps/eyebank/common/dashboard/data/models/menu_item.dart';
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
      backgroundColor: Colors.white, // Set background color
      elevation: 8.0, // Set elevation for shadow effect
      selectedLabelStyle: applyRobotoFont(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 12,
      ),
      unselectedLabelStyle: applyRobotoFont(
        fontWeight: FontWeight.w500,
        color: Colors.grey,
        fontSize: 12,
      ),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black, // Set selected item color

      type: BottomNavigationBarType.fixed, // Ensure all items are displayed
      items: items
          .map(
            (item) => BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Icon(item.icon, size: 20),
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
