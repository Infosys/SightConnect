import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class FormTimePicker extends HookWidget {
  const FormTimePicker({
    super.key,
    required this.field,
    required this.onChanged,
  });
  final ElementClassEntity field;
  final Function(DateTime?) onChanged;

  @override
  Widget build(BuildContext context) {
    DateTime? getInitialValue() {
      try {
        return field.initialValue != null
            ? DateFormat.jm().parse(field.initialValue as String)
            : null;
      } catch (e) {
        return null;
      }
    }

    return FormBuilderDateTimePicker(
      autofocus: false,
      initialValue: getInitialValue(),
      format: DateFormat.jm(), // Display time in 'hh:mm a' format
      valueTransformer: (DateTime? value) {
        return value
            ?.toUtc()
            .toIso8601String(); // Send value in UTC ISO 8601 format
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputType: InputType.time,
      decoration: InputDecoration(
        labelText: field.title,
        suffixIcon: const Icon(Icons.watch_outlined),
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
