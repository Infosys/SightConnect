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

  final ElementClassEntity field;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderSlider(
      name: field.name,
      decoration: InputDecoration(
        labelText: field.name,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      min: 0.0,
      max: 0.0,
      initialValue: 0.0,
    );
  }
}
