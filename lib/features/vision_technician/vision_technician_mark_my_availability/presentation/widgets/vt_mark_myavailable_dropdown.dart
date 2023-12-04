import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class VTMarkMyAvailableDropdown extends StatefulWidget {
  const VTMarkMyAvailableDropdown(
      {super.key,
      required this.title,
      required this.listOfOptions,
      required this.disable});

  final String title;
  final List<String> listOfOptions;
  final bool disable;
  @override
  State<VTMarkMyAvailableDropdown> createState() =>
      _VTMarkMyAvailableDropdownState();
}

class _VTMarkMyAvailableDropdownState extends State<VTMarkMyAvailableDropdown> {
  final FocusNode _focusNode = FocusNode();
  bool hasFocus = false;
  var dropdownvalue;

  @override
  void initState() {
    super.initState();
    dropdownvalue = widget.title; // Initialize dropdownvalue in initState
  }

  @override
  Widget build(BuildContext context) {
    _focusNode.addListener(() {
      setState(() {
        hasFocus = _focusNode.hasFocus;
      });
    });
    return Container(
      width: AppSize.klwidth * 7.36,
      child: DropdownButton(
        iconSize: 40,
        isExpanded: true,
        value: dropdownvalue,
        items: widget.listOfOptions.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: widget.disable == true
            ? (value) {
                setState(() {
                  print(value);
                  dropdownvalue = value!;
                });
              }
            : null,
      ),
    );
  }
}
