import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppRadioButton<T> extends HookWidget {
  AppRadioButton({
    required this.items,
    required this.displayItems,
    this.initialValue,
    this.title,
    this.onChanged,
    super.key,
  })  : assert(items.isNotEmpty, "Items cannot be empty"),
        assert(displayItems.isNotEmpty, "Display Items cannot be empty"),
        assert(items.length == displayItems.length,
            "Items and Display Items must have the same length");

  final T? initialValue;
  final String? title;
  final List<T> displayItems;
  final List<T> items;
  final Function(T)? onChanged;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<T?>(initialValue);
    final isMobile = Responsive.isMobile(context);
    return Container(
      // color: Colors.pink,
      constraints: BoxConstraints(
        minWidth: isMobile ? AppSize.width(context) * 0.8 : 300,
        maxWidth: isMobile ? AppSize.width(context) * 0.8 : 300,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                title!,
                style: applyRobotoFont(
                  fontSize: 14,
                  color: AppColor.darkGrey,
                ),
              ),
            ),
          if (title != null) const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items
                .map(
                  (item) => Row(
                    children: [
                      Radio(
                        value: item,
                        groupValue: selectedValue.value,
                        onChanged: (value) {
                          selectedValue.value = value as T;
                          onChanged?.call(value);
                        },
                      ),
                      Text(
                        displayItems[items.indexOf(item)].toString(),
                        style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
