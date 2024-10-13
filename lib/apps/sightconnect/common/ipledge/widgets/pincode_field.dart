/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';

class PincodeField extends StatelessWidget {
  const PincodeField({
    super.key,
    this.pincodeController,
  });

  final TextEditingController? pincodeController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pincodeController,
      onChanged: (value) {
        pincodeController?.text = value;
        pincodeController?.selection = TextSelection.fromPosition(
          TextPosition(offset: pincodeController?.text.length ?? 0),
        );
      },
      enabled: false,
      // validator: (value) {
      //   value = value ?? "";
      //   if (value.isEmpty) {
      //     return "Pincode is required";
      //   }
      //   return null;
      // },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: "Pincode *",
      ),
    );
  }
}
