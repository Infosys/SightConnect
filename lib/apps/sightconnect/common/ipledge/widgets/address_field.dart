import 'package:flutter/material.dart';

class AddressField extends StatelessWidget {
  const AddressField({
    super.key,
    this.addressController,
    this.enabled = true,
  });

  final TextEditingController? addressController;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: addressController,
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "Address is required";
        }
        return null;
      },
      onChanged: (value) {
        addressController?.text = value;
        addressController?.selection = TextSelection.fromPosition(
          TextPosition(offset: addressController?.text.length ?? 0),
        );
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 2,
      decoration: const InputDecoration(
        label: Text(
          "Address (House No, Building, Street, Area)",
          maxLines: 2,
        ),
      ),
    );
  }
}
