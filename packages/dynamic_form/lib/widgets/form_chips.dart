import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormChip extends StatelessWidget {
  const FormChip({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    final options = field.options;
    return FormBuilderChoiceChip<String>(
      name: field.label,
      decoration: InputDecoration(
        labelText: field.label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      validator: field.isRequired
          ? FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ])
          : null,
      onChanged: onChanged,
      options: options
          .map((option) => FormBuilderChipOption(
                value: option.value,
                child: Text(option.label),
              ))
          .toList(),
    );
  }
}
