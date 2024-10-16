/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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
        if (value.isEmpty) {
          return "Date of Birth is required";
        }
        return null;
      },
      enabled: false,
      inputFormatters: [DateInputFormatter()],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Date of Birth *',
        hintText: "DD-MM-YYYY",
        suffixIcon: IconButton(
          onPressed: () async {
            // try {
            //   final selectedDateTime = await showDatePicker(
            //     context: context,
            //     initialDate: DateTime.now(),
            //     firstDate: DateTime(1900),
            //     lastDate: DateTime.now(),
            //   );
            //   if (selectedDateTime != null) {
            //     dobController?.text =
            //         "${selectedDateTime.day.toString().padLeft(2, '0')}-${selectedDateTime.month.toString().padLeft(2, '0')}-${selectedDateTime.year}";
            //   }
            // } catch (e) {
            //   logger.e(e);
            // }
          },
          icon: const Icon(Icons.calendar_today, color: Colors.grey),
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
