import 'package:flutter/material.dart';

class AdditionalField extends StatelessWidget {
  const AdditionalField({
    super.key,
    this.additionalController,
  });

  final TextEditingController? additionalController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: additionalController,
      onChanged: (value) {
        additionalController?.text = value;
        additionalController?.selection = TextSelection.fromPosition(
          TextPosition(offset: additionalController?.text.length ?? 0),
        );
      },
      // validator: (value) {
      //   value = value ?? "";
      //   final isValid = RegExp(AppRegex.email).hasMatch(value);
      //   return isValid ? null : "Please enter a valid email";
      // },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Additional Information (Optional) ",
        helperText: "Provide any important information about the donor.",
        helperMaxLines: 2,
      ),
    );
  }
}
