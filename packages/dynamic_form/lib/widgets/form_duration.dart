import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDuration extends StatelessWidget {
  const FormDuration({
    super.key,
    required this.field,
    this.onChanged,
  });

  final ElementElementClassEntity field;
  final Function(int)? onChanged;

  @override
  Widget build(BuildContext context) {
    int days = 0;
    int hours = 0;
    int minutes = 0;
    int seconds = 0;

    convertTimetoSeconds() {
      return days * 86400 + hours * 3600 + minutes * 60 + seconds;
    }

    convertSecondsToTime(int seconds) {
      days = (seconds / 86400).floor();
      hours = ((seconds % 86400) / 3600).floor();
      minutes = (((seconds % 86400) % 3600) / 60).floor();
      seconds = (((seconds % 86400) % 3600) % 60).floor();
    }

    return FormBuilderField<int>(
      enabled: field.readOnly,
      name: field.name,
      validator: field.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      onSaved: (newValue) {
        onChanged?.call(convertTimetoSeconds());
      },
      onChanged: (value) {
        onChanged?.call(convertTimetoSeconds());
      },
      initialValue: convertSecondsToTime(field.initialValue ?? 0),
      builder: (FormFieldState<dynamic> field) {
        return Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Days',
                    ),
                    onChanged: (value) {
                      hours = int.tryParse(value) ?? 0;
                    },
                    validator: field.value == null
                        ? FormBuilderValidators.compose(
                            [FormBuilderValidators.required()])
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Hours',
                    ),
                    onChanged: (value) {
                      hours = int.tryParse(value) ?? 0;
                    },
                    validator: field.value == null
                        ? FormBuilderValidators.compose(
                            [FormBuilderValidators.required()])
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Minutes',
                    ),
                    onChanged: (value) {
                      minutes = int.tryParse(value) ?? 0;
                    },
                    validator: field.value == null
                        ? FormBuilderValidators.compose(
                            [FormBuilderValidators.required()])
                        : null,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Seconds',
                    ),
                    onChanged: (value) {
                      seconds = int.tryParse(value) ?? 0;
                    },
                    validator: field.value == null
                        ? FormBuilderValidators.compose(
                            [FormBuilderValidators.required()])
                        : null,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
