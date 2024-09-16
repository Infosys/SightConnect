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
