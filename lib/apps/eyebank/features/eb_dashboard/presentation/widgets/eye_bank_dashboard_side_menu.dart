import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/data/models/menu_item.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeBankDashboardSideMenu extends HookConsumerWidget {
  const EyeBankDashboardSideMenu({
    super.key,
    required this.items,
    required this.onSelected,
    required this.initialIndex,
  });

  final List<MenuItem> items;
  final Function(int index) onSelected;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTablet = Responsive.isTablet(context);

    return SingleChildScrollView(
      child: Container(
        width: Responsive.isTablet(context) ? 100 : 300,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
                child: () {
                  if (isTablet) {
                    return Image.asset(
                      "assets/logo/app_icon.png",
                      height: 40,
                    );
                  } else {
                    return Image.asset(
                      AppImages.logo,
                      height: 40,
                    );
                  }
                }()),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return OptionCard(
                  index: index,
                  options: items,
                  isSelected: items[index].id == initialIndex,
                  onSelect: (selectedItem) {
                    onSelected(index);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends HookWidget {
  const OptionCard({
    super.key,
    required this.index,
    required this.options,
    required this.isSelected,
    required this.onSelect,
  });

  final int index;
  final List<MenuItem> options;
  final bool isSelected;
  final Function(MenuItem) onSelect;

  @override
  Widget build(BuildContext context) {
    final hovered = useState<bool>(false);
    final isTablet = Responsive.isTablet(context);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        hovered.value = true;
      },
      onExit: (_) {
        hovered.value = false;
      },
      child: InkWell(
        onTap: () {
          onSelect(options[index]);
          if (Responsive.isMobile(context)) {
            Navigator.of(context).pop();
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColor.primary.withOpacity(0.8)
                : hovered.value
                    ? AppColor.primary.withOpacity(0.1)
                    : AppColor.white,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
          child: Row(
            mainAxisAlignment:
                isTablet ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Icon(
                options[index].icon,
                color: isSelected ? AppColor.white : AppColor.black,
                size: isSelected ? 22 : 22,
              ),
              if (!isTablet) const SizedBox(width: 16),
              if (!isTablet)
                Flexible(
                  child: Text(
                    options[index].title ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: applyFiraSansFont(
                      fontSize: isSelected ? 14 : 12,
                      fontWeight:
                          isSelected ? FontWeight.w700 : FontWeight.w400,
                      color: isSelected ? AppColor.white : AppColor.black,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
