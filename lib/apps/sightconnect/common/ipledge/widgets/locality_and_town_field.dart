import 'package:flutter/material.dart';

class LocalityAndTownField extends StatelessWidget {
  const LocalityAndTownField({
    super.key,
    this.localityController,
    this.enabled = true,
  });

  final TextEditingController? localityController;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: localityController,
      // validator: (value) {
      //   value = value ?? "";
      //   if (value.isEmpty) {
      //     return "Locality/ Town is required";
      //   }
      //   return null;
      // },
      onChanged: (value) {
        localityController?.text = value;
        localityController?.selection = TextSelection.fromPosition(
          TextPosition(offset: localityController?.text.length ?? 0),
        );
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        label: Text(
          "Locality/ Town",
          maxLines: 2,
        ),
      ),
    );
  }
}
