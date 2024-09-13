import 'package:eye_care_for_all/shared/regex/regex.dart';
import 'package:flutter/material.dart';

class MobileField extends StatelessWidget {
  const MobileField({
    super.key,
    this.mobileController,
    this.enabled = true,
  });

  final TextEditingController? mobileController;
  final bool enabled;
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
      enabled: enabled,
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "Mobile Number is required";
        } else if (Regex.isMobile(value)) {
          return "Invalid Mobile Number";
        } else {
          return null;
        }
      },
      decoration: const InputDecoration(
        labelText: 'Mobile Number *',
      ),
    );
  }
}
