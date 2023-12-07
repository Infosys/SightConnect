import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DropdownInput extends ConsumerWidget {
  DropdownInput({super.key, required this.listOfOptions});

  final List<String> listOfOptions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: AppSize.klwidth * 10,
      child: DropdownButton(
        isExpanded: true,
        value: ref.watch(registerNewPatientProvider).stateDropDownValue,
        items: listOfOptions.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (value) {
          ref.read(registerNewPatientProvider.notifier).setStateDropDown(value);
        },
      ),
    );
  }
}
/* 
class DropdownInput extends StatelessElement {
   DropdownInput(
      {super.key, required this.title, required this.listOfOptions});

    final String title;
    final List<String> listOfOptions;

    final FocusNode _focusNode = FocusNode();
    bool hasFocus = false;
    var dropdownvalue;

    @override
    Widget build(BuildContext context) {
/*       _focusNode.addListener(() {
        /*  setState(() {
          hasFocus = _focusNode.hasFocus;
        }); */
      }); */
      return Container(
        width: AppSize.klwidth * 10,
        child: DropdownButton(
          isExpanded: true,
          value: dropdownvalue,
          items: listOfOptions.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (value) {
            /* setState(() {
              dropdownvalue = value!;
            }); */
          },
        ),
      );
    }
  }
 */