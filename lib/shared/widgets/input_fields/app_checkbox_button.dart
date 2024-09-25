import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppCheckboxList<T> extends HookWidget {
  AppCheckboxList({
    Key? key,
    required this.items,
    required this.displayItems,
    this.initialValues,
    this.titleStyle,
    this.title,
    this.onChanged,
    this.direction = "HORIZONTAL",
  })  : assert(items.isNotEmpty, "Items cannot be empty"),
        assert(displayItems.isNotEmpty, "Display Items cannot be empty"),
        assert(items.length == displayItems.length,
            "Items and Display Items must have the same length"),
        super(key: key);

  final List<T>? initialValues;
  final String? title;
  final TextStyle? titleStyle;
  final List<T> displayItems;
  final List<T> items;
  final Function(List<T>)? onChanged;
  final String direction;

  @override
  Widget build(BuildContext context) {
    final selectedValues = useState<List<T>>(initialValues ?? []);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              title!,
              style: titleStyle ??
                  applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.darkGrey,
                  ),
            ),
          ),
        if (title != null) const SizedBox(height: 8),
        if (direction == "VERTICAL")
          Column(
            children: items
                .map(
                  (item) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Checkbox(
                          value: selectedValues.value.contains(item),
                          onChanged: (value) {
                            if (value == true) {
                              selectedValues.value = [
                                ...selectedValues.value,
                                item
                              ];
                            } else {
                              selectedValues.value = selectedValues.value
                                  .where((i) => i != item)
                                  .toList();
                            }
                            onChanged?.call(selectedValues.value);
                          },
                        ),
                        Text(
                          displayItems[items.indexOf(item)].toString(),
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        if (direction == "HORIZONTAL")
          Wrap(
            children: items
                .map(
                  (item) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: selectedValues.value.contains(item),
                          onChanged: (value) {
                            if (value == true) {
                              selectedValues.value = [
                                ...selectedValues.value,
                                item
                              ];
                            } else {
                              selectedValues.value = selectedValues.value
                                  .where((i) => i != item)
                                  .toList();
                            }
                            onChanged?.call(selectedValues.value);
                          },
                        ),
                        Flexible(
                          child: Text(
                            displayItems[items.indexOf(item)].toString(),
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(width: AppSize.kl)
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
      ],
    );
  }
}
