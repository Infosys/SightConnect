import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    required this.onSelected,
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final Function(int) onSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    var isMobile = Responsive.isMobile(context);
    var items = BottomNavItems.all;
    return BottomNavigationBar(
      backgroundColor: AppColor.white,
      currentIndex: selectedIndex,
      onTap: onSelected,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColor.primary,
      unselectedItemColor: AppColor.grey,
      unselectedLabelStyle: applyRobotoFont(fontSize: 10),
      selectedLabelStyle:
          applyRobotoFont(fontSize: 10, fontWeight: FontWeight.w600),
      items: List.generate(
        items.length,
        (index) {
          return BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                items[index].svgImage,
                height: isMobile ? 16 : 20,
                width: isMobile ? 16 : 20,
                colorFilter: index == selectedIndex
                    ? ColorFilter.mode(primaryColor, BlendMode.srcIn)
                    : const ColorFilter.mode(AppColor.grey, BlendMode.srcIn),
              ),
            ),
            label: items[index].name,
          );
        },
      ),
    );
  }
}
