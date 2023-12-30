import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterDropdownInput extends ConsumerWidget {
  const VTRegisterDropdownInput({super.key, required this.listOfOptions});

  final List<String> listOfOptions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton(
      isExpanded: true,
      value: ref.watch(registerNewPatientHelperProvider).stateDropDownValue,
      items: listOfOptions.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (value) {
        ref
            .read(registerNewPatientHelperProvider.notifier)
            .setStateDropDown(value);
      },
    );
  }
}
