import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormSlider extends StatelessWidget {
  const FormSlider({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderSlider(
      name: field.label,
      decoration: InputDecoration(
        labelText: field.label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      min: field.minLength ?? 0.0,
      max: field.maxLength ?? 0.0,
      divisions: field.divisions,
      initialValue: field.initialValue as double? ?? 0.0,
    );
  }
}
