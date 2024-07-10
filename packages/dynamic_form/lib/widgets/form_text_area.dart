import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../data/entities/dynamic_form_json_entity.dart';

class FormTextArea extends StatelessWidget {
  const FormTextArea({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: field.label,
      decoration: InputDecoration(
        labelText: field.label,
        hintText: field.hint,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
        alignLabelWithHint: true,
      ),
      validator: (value) {
        value = value ?? '';
        if (field.isRequired && value.isEmpty) {
          return 'This field is required';
        }

        if (!RegExp(field.validation.pattern).hasMatch(value)) {
          return field.validation.errorMessage;
        }
        return null;
      },
      keyboardType: field.keyBoardType == "number"
          ? TextInputType.number
          : TextInputType.text,
      onChanged: onChanged,
      readOnly: field.readOnly,
      initialValue: field.initialValue,
      maxLength: field.maxLength,
      maxLines: field.maxlines,
      obscureText: field.obscure,
    );
  }
}
