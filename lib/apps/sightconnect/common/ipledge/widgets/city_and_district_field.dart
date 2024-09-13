import 'package:flutter/material.dart';

class CityAndDistrictField extends StatelessWidget {
  const CityAndDistrictField({
    super.key,
    this.cityController,
  });

  final TextEditingController? cityController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
