import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormCheckbox extends StatelessWidget {
  const FormCheckbox({
    super.key,
    required this.field,
    this.onChanged,
  });

  final ElementElementClassEntity field;
  final Function(List<dynamic>?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckboxGroup<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: field.name,
      decoration: InputDecoration(
        labelText: field.title,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      options: field.choices!
          .map((element) => FormBuilderFieldOption(
                value: element.name,
                child: Text(element.title),
              ))
          .toList(),
    );
  }
}
