import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int) onSelected;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final width = AppSize.width(context);
    final height = AppSize.height(context);
    var isMobile = Responsive.isMobile(context);
    var item = BottomNavItems.all;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? width * 0.1 : width * 0.15,
        vertical: height * 0.02,
      ),
      child: Card(
        elevation: AppSize.klelevation,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.klradius * 8),
        ),
        child: Padding(
          padding: isMobile
              ? const EdgeInsets.all(AppSize.kspadding + 4)
              : const EdgeInsets.all(AppSize.kmpadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              item.length,
              (index) {
                final isSelected = item[index].isSelected;
                final colorFilter = isSelected
                    ? ColorFilter.mode(primaryColor, BlendMode.srcIn)
                    : const ColorFilter.mode(AppColor.grey, BlendMode.srcIn);

                return InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    onSelected(index);
                    updateScale(index, item);
                    for (var element in item) {
                      element.isSelected = false;
                    }
                    item[index].isSelected = true;
                  },
                  child: ColorFiltered(
                    colorFilter: colorFilter,
                    child: AnimatedScale(
                      scale: item[index].initialScale.toDouble(),
                      duration: const Duration(milliseconds: 200),
                      child: Container(
                        padding: isMobile
                            ? const EdgeInsets.all(AppSize.kspadding)
                            : const EdgeInsets.all(AppSize.kmpadding - 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              isSelected ? primaryColor.withOpacity(0.1) : null,
                        ),
                        child: SvgPicture.asset(
                          item[index].svgImage,
                          height: isMobile ? 16 : 20,
                          width: isMobile ? 16 : 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  updateScale(int index, List<BottomNavItem> item) {
    for (var element in item) {
      if (item.indexOf(element) == 4) {
        element.initialScale = 0.8;
      } else {
        element.initialScale = 1.0;
      }
    }
    item[index].initialScale = 1.2;
  }
}
