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

  final Object field;
  final Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final ElementElementClassEntity fieldEntity =
        field as ElementElementClassEntity;

    List<Object>? getInitialValue() {
      final List<Object>? initialValue =
          fieldEntity.initialValue as List<Object>?;
      if (initialValue != null &&
          initialValue.every((element) =>
              fieldEntity.choices!.any((item) => item.name == element))) {
        return initialValue;
      }
      return null;
    }

    return FormBuilderCheckboxGroup<Object?>(
      initialValue: getInitialValue(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: fieldEntity.name,
      decoration: InputDecoration(
        labelText: fieldEntity.title,
        hintText: fieldEntity.description,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: fieldEntity.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      options: fieldEntity.choices!
          .map((element) => FormBuilderFieldOption<Object?>(
                value: element.name,
                child: Text(element.title),
              ))
          .toList(),
    );
  }
}
