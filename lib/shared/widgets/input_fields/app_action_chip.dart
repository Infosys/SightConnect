import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppActionChip<T> extends HookWidget {
  const AppActionChip({
    super.key,
    required this.items,
    this.minWidth,
    this.maxWidth,
    this.initialValue,
    required this.onSelected,
  });

  final List<T> items;
  final double? minWidth;
  final double? maxWidth;
  final Function(T) onSelected;
  final T? initialValue;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final selectedValue = useState<T?>(initialValue);
    return Container(
      constraints: BoxConstraints(
        minWidth: minWidth ?? (isMobile ? AppSize.width(context) * 0.4 : 300),
        maxWidth: maxWidth ?? (isMobile ? AppSize.width(context) * 0.4 : 300),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        runSpacing: 16,
        spacing: 16,
        children: items
            .map(
              (item) => ActionChip(
                iconTheme: const IconThemeData(
                  size: 16,
                ),
                avatar: selectedValue.value == item
                    ? const Icon(Icons.check)
                    : null,
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                backgroundColor: selectedValue.value == item
                    ? AppColor.blue.withOpacity(0.1)
                    : AppColor.white,
                side: BorderSide(
                  color: selectedValue.value == item
                      ? AppColor.blue
                      : AppColor.grey,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                label: Text(
                  item.toString(),
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: selectedValue.value == item
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  selectedValue.value = item;
                  onSelected(item);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
