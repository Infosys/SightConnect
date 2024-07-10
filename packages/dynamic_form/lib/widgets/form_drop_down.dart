import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDropDown extends StatelessWidget {
  const FormDropDown({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = field.label;
    final String hint = field.hint;
    final List<DropdownMenuItem<String>> options = field.options
        .cast<OptionEntity>()
        .map((option) => DropdownMenuItem<String>(
              value: option.value,
              child: Text(option.label),
            ))
        .toList();

    return FormBuilderDropdown<String>(
      name: label,
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      items: options,
      onChanged: onChanged,
      initialValue: field.initialValue,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
    );
  }
}
