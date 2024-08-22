import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDateTimePicker extends HookWidget {
  const FormDateTimePicker({
    super.key,
    required this.field,
    required this.onChanged,
  });
  final ElementElementClassEntity field;
  final Function(DateTime?) onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      valueTransformer: (DateTime? value) {
        return value?.toUtc().toIso8601String();
      },
      initialEntryMode: DatePickerEntryMode.calendar,
      initialValue: DateTime.tryParse(field.initialValue ?? ''),
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: field.title,
        suffixIcon: const Icon(Icons.calendar_today),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      name: field.name,
      onChanged: onChanged,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
    );
  }
}
