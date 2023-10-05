import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MemberDetailsForm extends HookWidget {
  const MemberDetailsForm(
      {super.key,
      required this.text,
      this.isDate = false,
      this.numberKeyboard = false});
  final String text;
  final bool isDate;
  final bool numberKeyboard;

  @override
  Widget build(BuildContext context) {
    final nameFocusNode = useFocusNode();
    final nameFocus = useState(false);
    final selectedDate = useState<DateTime>(DateTime.now());
    final datePicked = useState<bool>(false);

    nameFocusNode.addListener(() {
      nameFocus.value = nameFocusNode.hasFocus;
    });

    Future<void> selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );

      if (picked != null && picked != selectedDate.value) {
        selectedDate.value = picked;
      }
    }

    if (isDate == false) {
      return TextField(
        focusNode: nameFocusNode,
        keyboardType:
            numberKeyboard ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.0,
              color: AppColor.primary,
            ),
          ),
          labelText: text,
          labelStyle: applyRobotoFont(
              fontSize: 14,
              color: nameFocus.value ? AppColor.primary : AppColor.black),
        ),
      );
    } else {
      return TextField(
        focusNode: nameFocusNode,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1.0,
              color: AppColor.primary,
            ),
          ),
          labelText: text,
          labelStyle: applyRobotoFont(
              fontSize: 14,
              color: nameFocus.value ? AppColor.primary : AppColor.black),
          suffixIcon: GestureDetector(
              onTap: () {
                datePicked.value = true;
                selectDate(context);
              },
              child: const Icon(CupertinoIcons.calendar)),
        ),
        controller: TextEditingController(
          text: datePicked.value
              ? '${selectedDate.value.day}/${selectedDate.value.month}/${selectedDate.value.year}'
              : '',
        ),
      );
    }
  }
}
