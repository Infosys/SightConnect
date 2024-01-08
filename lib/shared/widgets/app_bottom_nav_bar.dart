import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
              padding: const EdgeInsets.all(4.0),
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

  // @override
  // Widget build(BuildContext context) {
  //   final primaryColor = Theme.of(context).primaryColor;
  //   final width = AppSize.width(context);
  //   final height = AppSize.height(context);
  //   var isMobile = Responsive.isMobile(context);
  //   var items = BottomNavItems.all;

  //   return Padding(
  //     padding: EdgeInsets.symmetric(
  //       horizontal: isMobile ? width * 0.1 : width * 0.15,
  //       vertical: height * 0.02,
  //     ),
  //     child: Card(
  //       elevation: AppSize.klelevation,
  //       margin: EdgeInsets.zero,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(AppSize.klradius * 8),
  //       ),
  //       child: Padding(
  //         padding: isMobile
  //             ? const EdgeInsets.all(AppSize.kspadding + 4)
  //             : const EdgeInsets.all(AppSize.kmpadding),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: List.generate(
  //             items.length,
  //             (index) {
  //               ColorFilter colorFilter;
  //               if (index == 0) {
  //                 colorFilter = ColorFilter.mode(primaryColor, BlendMode.srcIn);
  //               } else if (index == 2) {
  //                 colorFilter =
  //                     const ColorFilter.mode(AppColor.white, BlendMode.srcIn);
  //               } else {
  //                 colorFilter =
  //                     const ColorFilter.mode(AppColor.grey, BlendMode.srcIn);
  //               }

  //               return InkWell(
  //                 customBorder: const CircleBorder(),
  //                 onTap: () {
  //                   onSelected(index);
  //                 },
  //                 child: AnimatedScale(
  //                   scale: items[index].initialScale.toDouble(),
  //                   duration: const Duration(milliseconds: 200),
  //                   child: Container(
  //                     padding: isMobile
  //                         ? const EdgeInsets.all(AppSize.kspadding)
  //                         : const EdgeInsets.all(AppSize.kmpadding - 4),
  //                     decoration: BoxDecoration(
  //                       shape: BoxShape.circle,
  //                       color: index == 2 ? primaryColor : null,
  //                     ),
  //                     child: ColorFiltered(
  //                       colorFilter: colorFilter,
  //                       child: SvgPicture.asset(
  //                         items[index].svgImage,
  //                         height: isMobile ? 16 : 20,
  //                         width: isMobile ? 16 : 20,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             },
  //           ),

  //         ),
  //       ),
  //     ),
  //   );
  // }

  // updateScale(int index, BottomNavItem item) {
  //   item.initialScale = 1.2;
  //   Future.delayed(const Duration(milliseconds: 200), () {
  //     item.initialScale = 1;
  //   });
  // }
}
