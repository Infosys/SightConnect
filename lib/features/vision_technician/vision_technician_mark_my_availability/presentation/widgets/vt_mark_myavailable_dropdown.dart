import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableDropdown extends ConsumerWidget {
  VtMarkMyAvailableDropdown(
      {super.key,
      required this.title,
      required this.listOfOptions,
      required this.disable,
      required this.dayAvailabilityindex,
      required this.index,
      required this.dropDownNo});

  final String title;
  final List<String> listOfOptions;
  final bool disable;
  final int dayAvailabilityindex;
  final int index;
  final int dropDownNo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dropdownlist = ref
        .read(markMyAvailabilityProvider)
        .markMyAvailabilityList[dayAvailabilityindex];
    var dropdownvalue = (dropdownlist.time)[index][dropDownNo];

    return SizedBox(
      width: AppSize.klwidth * 7.36,
      child: DropdownButton(
        iconSize: 40,
        isExpanded: true,
        value: dropdownvalue,
        items: listOfOptions.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: disable == true
            ? (value) {
                dropdownvalue = value.toString();
                ref.read(markMyAvailabilityProvider.notifier).updatedropdown(
                    dayAvailabilityindex, index, value, dropDownNo);
              }
            : null,
      ),
    );
  }
}
