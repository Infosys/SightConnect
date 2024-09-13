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
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: 2,
      decoration: const InputDecoration(
        labelText: "Additional Information (Optional) ",
      ),
    );
  }
}
