import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../data/entities/dynamic_form_json_entity.dart';

class FormTextArea extends StatelessWidget {
  const FormTextArea({
    super.key,
    required this.field,
    required this.formKey,
    this.onChanged,
  });

  final ElementClassEntity field;
  final Function(String?)? onChanged;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: field.initialValue?.toString(),
      name: field.name,
      decoration: InputDecoration(
        labelText: field.title,
        hintText: field.description,
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
        if (field.validators.isNotEmpty) {
          for (var validator in field.validators) {
            if (validator.type == 'regex') {
              if (!RegExp(validator.regex).hasMatch(value)) {
                return validator.text;
              }
            }
          }
        }

        return null;
      },
      onChanged: onChanged,
      maxLines: field.max,
      enabled: field.readOnly ? false : true,
    );
  }
}
