import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppDropDown<T> extends HookWidget {
  const AppDropDown({
    this.intialValue,
    required this.items,
    this.onChanged,
    super.key,
  });

  final T? intialValue;

  final List<T> items;
  final Function(T)? onChanged;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<T>(intialValue ?? items.first);
    final isMobile = Responsive.isMobile(context);
    return SizedBox(
      width: isMobile ? AppSize.width(context) * 0.4 : 300,
      child: items.isNotEmpty
          ? DropdownButton<T>(
              isDense: true,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 0,
              value: selectedValue.value,
              onChanged: (value) {
                selectedValue.value = value as T;
                onChanged?.call(value);
              },
              items: items
                  .map(
                    (item) => DropdownMenuItem<T>(
                      value: item,
                      child: Text(
                        item.toString(),
                        style: applyRobotoFont(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            )
          : const SizedBox(),
    );
  }
}
