import 'package:eye_care_for_all/core/constants/app_color.dart';
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
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    _focusNode.addListener(() {
      setState(() {
        hasFocus = _focusNode.hasFocus;
      });
    });
    return TextFormField(
      focusNode: _focusNode,
      autofocus: false,
      controller: _controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
          return 'Please Select State';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: applyRobotoFont(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: hasFocus ? AppColor.primary : AppColor.black,
        ),
        suffixIcon: PopupMenuButton<String>(
          initialValue: "",
          icon: const Icon(Icons.arrow_drop_down),
          onSelected: (value) {
            _controller.text = value.toString();
          },
          itemBuilder: (context) {
            return widget.listOfOptions.map<PopupMenuItem<String>>((value) {
              return PopupMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
