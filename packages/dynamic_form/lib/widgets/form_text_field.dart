import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../data/entities/dynamic_form_json_entity.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.map,
    this.onChanged,
  });

  final FieldEntity map;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: map.label,
      decoration: InputDecoration(
        labelText: map.label,
        hintText: map.hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      validator: (value) {
        value = value ?? '';
        if (map.isRequired && value.isEmpty) {
          return 'This field is required';
        }

        if (!RegExp(map.validation.pattern).hasMatch(value)) {
          return 'Invalid value';
        }
        return null;
      },
      keyboardType: map.keyBoardType == "text"
          ? TextInputType.text
          : TextInputType.number,
      onChanged: onChanged,
      readOnly: map.readOnly,
      initialValue: map.initialValue,
      maxLength: map.maxLength,
      maxLines: map.maxlines,
      obscureText: map.obscure,
    );
  }
}
