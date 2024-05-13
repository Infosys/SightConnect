import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/regex/regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DOBField extends StatelessWidget {
  const DOBField({
    super.key,
    this.dobController,
  });

  final TextEditingController? dobController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dobController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        value = value ?? "";
        final isValid = RegExp(Regex.dob).hasMatch(value);
        return isValid ? null : "Please enter a valid date";
      },
      inputFormatters: [DateInputFormatter()],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Date of Birth *',
        hintText: "DD-MM-YYYY",
        suffixIcon: IconButton(
          onPressed: () async {
            try {
              final selectedDateTime = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );
              if (selectedDateTime != null) {
                dobController?.text =
                    "${selectedDateTime.day.toString().padLeft(2, '0')}-${selectedDateTime.month.toString().padLeft(2, '0')}-${selectedDateTime.year}";
              }
            } catch (e) {
              logger.e(e);
            }
          },
          icon: const Icon(Icons.calendar_today),
        ),
        isDense: true,
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        labelStyle: const TextStyle(
          fontSize: 14,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 14,
        ),
        errorStyle: const TextStyle(
          fontSize: 12,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.red),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.blue),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.red),
        ),
      ),
    );
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final oldText = oldValue.text;
    final newText = newValue.text;

    if (oldText.length < newText.length) {
      if (newText.length == 2 || newText.length == 5) {
        return TextEditingValue(
          text: '$newText-',
          selection: TextSelection.collapsed(offset: newText.length + 1),
        );
      }
    }
    return newValue;
  }
}
