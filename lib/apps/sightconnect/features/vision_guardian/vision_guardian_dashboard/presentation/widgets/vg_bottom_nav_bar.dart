import 'package:eye_care_for_all/apps/sightconnect/helpers/models/bottom_nav_item.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../vision_guardian_home/data/models/vg_bottom_nav_items.dart';

class VisionGuardianBottomNavBar extends StatelessWidget {
  const VisionGuardianBottomNavBar({
    required this.onSelected,
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final Function(VisionGuardianBottomNavItemId, int) onSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    var isMobile = Responsive.isMobile(context);
    final loc = context.loc!;
    var items = VisionGuardianBottomNavItems.getAll(loc);

    return Padding(
      padding: const EdgeInsets.symmetric(
          // horizontal: isMobile ? width * 0.1 : width * 0.15,
          // vertical: height * 0.02,
          ),
      child: Card(
        elevation: AppSize.kl,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: SizedBox(
          width: AppSize.width(context),
          child: Padding(
            padding: isMobile
                ? const EdgeInsets.all(AppSize.ks + 4)
                : const EdgeInsets.all(AppSize.km),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                items.length,
                (index) {
                  ColorFilter colorFilter;
                  // if (index == 2) {
                  //   colorFilter =
                  //       ColorFilter.mode(primaryColor, BlendMode.srcIn);
                  // }
                  if (index == 0) {
                    colorFilter =
                        const ColorFilter.mode(AppColor.white, BlendMode.srcIn);
                  } else {
                    colorFilter =
                        const ColorFilter.mode(AppColor.grey, BlendMode.srcIn);
                  }

                  return InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      onSelected(items[index].id, index);
                    },
                    child: AnimatedScale(
                      scale: items[index].initialScale.toDouble(),
                      duration: const Duration(milliseconds: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: AppSize.width(context) * 0.2,
                            padding: isMobile
                                ? const EdgeInsets.all(AppSize.ks)
                                : const EdgeInsets.all(AppSize.km - 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: index == 0 ? primaryColor : null,
                            ),
                            child: ColorFiltered(
                              colorFilter: colorFilter,
                              child: SvgPicture.asset(
                                items[index].svgImage,
                                height: isMobile ? 16 : 20,
                                width: isMobile ? 16 : 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.ks - 2,
                          ),
                          Text(
                            items[index].name,
                            style: applyRobotoFont(
                              fontSize: 12,
                              color:
                                  index == 0 ? AppColor.black : AppColor.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  updateScale(int index, BottomNavItem item) {
    item.initialScale = 1.2;
    Future.delayed(const Duration(milliseconds: 200), () {
      item.initialScale = 1;
    });
  }
}
