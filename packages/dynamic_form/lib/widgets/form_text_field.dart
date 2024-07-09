import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.map,
    this.onChanged,
  });

  final Map<String, dynamic> map;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final bool required = map['required'] ?? false;
    final String? regex = map["validation"]["pattern"];

    return FormBuilderTextField(
      name: map['label'],
      decoration: InputDecoration(
        labelText: map['label'],
        hintText: map['hint'],
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      validator: (value) {
        value = value ?? '';
        if (required && value.isEmpty) {
          return 'This field is required';
        }
        if (regex != null && !RegExp(regex).hasMatch(value)) {
          return 'Invalid value';
        }
        return null;
      },
      keyboardType: map['keyboardType'] == "text"
          ? TextInputType.text
          : TextInputType.number,
      onChanged: onChanged,
      readOnly: map['readOnly'] ?? false,
      initialValue: map['initialValue'],
      maxLength: map['maxLength'],
      maxLines: map['maxLines'],
      obscureText: map['obscure'],
    );
  }
}
