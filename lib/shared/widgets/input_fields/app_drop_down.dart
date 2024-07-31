import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
      // color: Colors.yellow,
      width: isMobile ? AppSize.width(context) * 0.8 : 300,
      child: items.isNotEmpty
          ? DropdownButtonFormField<T>(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onChanged: (value) {
                selectedValue.value = value as T;
                onChanged?.call(value);
              },
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 0,
              value: selectedValue.value,
              validator: (value) {
                if (value == null) {
                  return 'Please select a value';
                }
                return null;
              },
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 21,
                  horizontal: 8,
                ),
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                labelStyle: TextStyle(
                  fontSize: 14,
                ),
                floatingLabelStyle: TextStyle(
                  fontSize: 14,
                ),
                errorStyle: TextStyle(
                  fontSize: 12,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.lightGrey),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.blue),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.lightGrey),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.lightGrey),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.red),
                ),
              ),
              items: items
                  .map(
                    (item) => DropdownMenuItem<T>(
                      value: item,
                      child: Text(
                        item.toString(),
                        style: const TextStyle(
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
