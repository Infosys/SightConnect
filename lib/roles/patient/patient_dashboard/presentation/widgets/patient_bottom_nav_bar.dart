import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PatientBottomNavBar extends HookWidget {
  const PatientBottomNavBar({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    final initialScale = useState<List<double>>([1.2, 1.0, 1.0, 1.0, 1.0]);

    void updateScale(int index) {
      initialScale.value = List.generate(5, (i) => i == index ? 1.2 : 1.0);
    }

    final icons = [
      AppIcon.navHome,
      AppIcon.navService,
      AppIcon.navAcuity,
      AppIcon.navNotification,
      AppIcon.navProfile,
    ];

    final primaryColor = Theme.of(context).primaryColor;

    List<IconButton> generateIcons() {
      return List.generate(
        5,
        (index) {
          final isSelected = initialScale.value[index] == 1.2;
          final colorFilter = isSelected
              ? ColorFilter.mode(primaryColor, BlendMode.srcIn)
              : const ColorFilter.mode(AppColor.kGrey, BlendMode.srcIn);

          return IconButton(
            onPressed: () {
              onTap(index);
              updateScale(index);
            },
            icon: ColorFiltered(
              colorFilter: colorFilter,
              child: AnimatedScale(
                scale: initialScale.value[index],
                duration: const Duration(milliseconds: 200),
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? primaryColor.withOpacity(0.1) : null,
                  ),
                  child: SvgPicture.asset(
                    icons[index],
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
            ),
          );
        },
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.width * 0.05,
        vertical: AppSize.height * 0.02,
      ),
      child: Card(
        elevation: 8,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.klradius * 8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kspadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: generateIcons(),
          ),
        ),
      ),
    );
  }
}
