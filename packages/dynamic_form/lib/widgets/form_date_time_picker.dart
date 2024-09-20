import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/date_time_expression_eval.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
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
  final ElementClassEntity field;
  final Function(String?) onChanged;

  @override
  Widget build(BuildContext context) {
    DateTime? getInitialValue() {
      try {
        final initialValue = field.initialValue;

        if (initialValue != null) {
          return DateTime.tryParse(initialValue.toString());
        }

        return null;
      } catch (e) {
        Log.e("FormDateTimePicker:$e");
        return null;
      }
    }

    return FormBuilderDateTimePicker(
      initialValue: getInitialValue(),
      valueTransformer: (DateTime? value) {
        return value?.toUtc().toIso8601String();
      },
      initialEntryMode: DatePickerEntryMode.calendar,
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: field.title,
        suffixIcon: const Icon(Icons.calendar_today),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      name: field.name,
      onChanged: (value) {
        onChanged(value?.toUtc().toIso8601String());
      },
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      lastDate: DateTimeExpressionEvaluator.evaluate(field.endDate),
      firstDate: DateTimeExpressionEvaluator.evaluate(field.startDate),
    );
  }
}
