import 'package:flutter/material.dart';

class AdditionalField extends StatelessWidget {
  const AdditionalField({
    super.key,
    this.additionalController,
    this.enabled = true,
  });

  final TextEditingController? additionalController;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: additionalController,
      onChanged: (value) {
        additionalController?.text = value;
        additionalController?.selection = TextSelection.fromPosition(
          TextPosition(offset: additionalController?.text.length ?? 0),
        );
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Additional Information (Optional) ",
      ),
    );
  }
}
