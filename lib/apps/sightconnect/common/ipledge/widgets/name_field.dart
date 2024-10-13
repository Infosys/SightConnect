/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
    this.nameController,
    this.enabled = true,
  });

  final bool enabled;

  final TextEditingController? nameController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      onChanged: (value) {
        nameController?.text = value;
        nameController?.selection = TextSelection.fromPosition(
          TextPosition(offset: nameController?.text.length ?? 0),
        );
      },
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      enabled: enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: "Full Name *",
      ),
    );
  }
}
