import 'package:eye_care_for_all/apps/eyebank/common/dashboard/pages/eye_bank_dashboard_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EyeBankDashboardSideMenu extends HookWidget {
  final Function(int? id) onSelected;
  const EyeBankDashboardSideMenu({
    super.key,
    required this.items,
    required this.onSelected,
  });

  final List<MenuItem> items;

  @override
  Widget build(BuildContext context) {
    final selected = useState<MenuItem>(items.first);
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);

    if (isMobile) {
      return const SizedBox();
    } else {
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
                  margin:
                      const EdgeInsets.only(left: 16, bottom: 16, right: 16),
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
                    isSelected: selected.value.id == items[index].id,
                    onSelect: (selectedItem) {
                      selected.value = selectedItem;
                      onSelected(selectedItem.id);
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
