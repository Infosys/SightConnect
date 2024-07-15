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

  final ElementEntity field;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      wrapDirection: Axis.vertical,
      wrapAlignment: WrapAlignment.start,
      wrapRunAlignment: WrapAlignment.start,
      separator: const SizedBox(height: 10),
      name: field.name,
      decoration: InputDecoration(
        hintText: field.name,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      options: field.choices
          .map(
            (option) => FormBuilderFieldOption(
              value: option.value,
              child: Text(option.text),
            ),
          )
          .toList(),
    );
  }
}
