import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormRadio extends StatelessWidget {
  const FormRadio({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    // final String label = map['label'] as String;

    // final options = map['options'] as List;

    return FormBuilderRadioGroup<String>(
      name: field.label,
      decoration: InputDecoration(
        labelText: field.label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator:
          FormBuilderValidators.compose([FormBuilderValidators.required()]),
      options: field.options
          .map(
            (option) => FormBuilderFieldOption(
              value: option.value,
              child: Text(option.label),
            ),
          )
          .toList(),
      initialValue: field.initialValue,
    );
  }
}
