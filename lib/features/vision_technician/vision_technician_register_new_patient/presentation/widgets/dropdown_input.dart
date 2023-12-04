import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const DropdownInput(
      {super.key, required this.title, required this.listOfOptions});

  final String title;
  final List<String> listOfOptions;
  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  final FocusNode _focusNode = FocusNode();
  bool hasFocus = false;
  var dropdownvalue;

  @override
  Widget build(BuildContext context) {
    _focusNode.addListener(() {
      setState(() {
        hasFocus = _focusNode.hasFocus;
      });
    });
    return Container(
      width: AppSize.klwidth*10,
      child: DropdownButton(
        isExpanded: true,
        value: dropdownvalue,
        items: widget.listOfOptions.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            dropdownvalue = value!;
          });
        },
      ),
    );
  }
}
