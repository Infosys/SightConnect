import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormCheckbox extends StatelessWidget {
  const FormCheckbox({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(List<dynamic>?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckboxGroup(
      name: field.label, // Use label as the field name
      decoration: InputDecoration(
        labelText: field.label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),

      onChanged: onChanged,
      options: field.options
          .map((option) => FormBuilderFieldOption(
                value: option.value,
                child: Text(option.label),
              ))
          .toList(),

      initialValue: [field.initialValue],
    );
  }
}
