import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
    final String label =
        map['label'] as String; // Ensure label is cast as String
    final String hint = map['hint'] as String;
    final bool required =
        map['required'] ?? false; // Set default required to false

    return FormBuilderTextField(
      name: label,
      decoration: InputDecoration(
        labelText: label, // Use label directly
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: 'This field is required'),
      ]),
      keyboardType: map['keyboardType'] == "text"
          ? TextInputType.text
          : TextInputType.number,
      onChanged: onChanged,
      readOnly: map['readOnly'] ?? false, // Set default readOnly to false
      initialValue: map['initialValue'],
    );
  }
}
