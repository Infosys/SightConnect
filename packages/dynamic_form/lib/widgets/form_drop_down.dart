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

  final ElementElementClassEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = field.name;
    final String hint = field.name;
    final List<DropdownMenuItem<String>> options = field.mapValueChoices!
        .map((element) => DropdownMenuItem<String>(
              value: element.value,
              child: Text(element.text),
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
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
    );
  }
}
