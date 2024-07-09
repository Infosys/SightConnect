import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDropDown extends StatelessWidget {
  const FormDropDown({
    super.key,
    required this.map,
    this.onChanged,
  });

  final FieldEntity map;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = map.label;
    final String hint = map.hint;
    final List<DropdownMenuItem<String>> options = map.options
        .cast<OptionEntity>()
        .map((option) => DropdownMenuItem<String>(
              value: option.value,
              child: Text(option.label),
            ))
        .toList();

    return FormBuilderDropdown<String>(
      name: label,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      items: options,
      onChanged: onChanged,
      initialValue: map.initialValue,
      validator:
          FormBuilderValidators.compose([FormBuilderValidators.required()]),
    );
  }
}
