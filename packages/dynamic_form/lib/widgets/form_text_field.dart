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
    final bool required =
        map['required'] ?? false; // Set default required to false

    return FormBuilderTextField(
      name: map['label'],
      decoration: InputDecoration(
        labelText: map['label'], // Use label directly
        hintText: map['hint'],
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      validator: required
          ? FormBuilderValidators.compose([
              FormBuilderValidators.required(
                  errorText: 'This field is required'),
            ])
          : null,
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
