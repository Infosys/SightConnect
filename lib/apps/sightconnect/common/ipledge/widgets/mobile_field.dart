import 'package:flutter/material.dart';

class MobileField extends StatelessWidget {
  const MobileField({
    super.key,
    this.mobileController,
  });

  final TextEditingController? mobileController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mobileController,
      onChanged: (value) {
        mobileController?.text = value;
        mobileController?.selection = TextSelection.fromPosition(
          TextPosition(offset: mobileController?.text.length ?? 0),
        );
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.phone,
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "Mobile Number is required";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Mobile Number *',
      ),
    );
  }
}
