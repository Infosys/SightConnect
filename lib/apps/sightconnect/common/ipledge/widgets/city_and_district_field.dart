import 'package:flutter/material.dart';

class CityAndDistrictField extends StatelessWidget {
  const CityAndDistrictField({
    super.key,
    this.cityController,
    this.enabled = true,
  });

  final TextEditingController? cityController;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      controller: cityController,
      validator: (value) {
        value = value ?? "";
        if (value.isEmpty) {
          return "City/ District is required";
        }
        return null;
      },
      onChanged: (value) {
        cityController?.text = value;
        cityController?.selection = TextSelection.fromPosition(
          TextPosition(offset: cityController?.text.length ?? 0),
        );
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        label: Text(
          "City/ District",
          maxLines: 2,
        ),
      ),
    );
  }
}
