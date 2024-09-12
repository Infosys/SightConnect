import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    this.emailController,
  });

  final TextEditingController? emailController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      onChanged: (value) {
        emailController?.text = value;
        emailController?.selection = TextSelection.fromPosition(
          TextPosition(offset: emailController?.text.length ?? 0),
        );
      },
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "Email is required";
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: "Email *",
      ),
    );
  }
}
