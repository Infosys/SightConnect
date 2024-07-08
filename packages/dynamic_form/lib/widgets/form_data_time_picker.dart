import 'package:dynamic_form/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDataTimePicker extends HookWidget {
  const FormDataTimePicker({
    super.key,
    required this.name,
    required this.onChanged,
  });
  final String name;
  final Function(DateTime) onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final String labelText = name;

    return AppCard(
      title: "Choose Date and Time",
      child: FormBuilderTextField(
        name: labelText,
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          suffixIcon: InkWell(
            onTap: () async {
              try {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                );
                if (picked != null) {
                  controller.text = _formateDate(picked);
                  onChanged(picked);
                }
              } catch (e) {
                print(e);
              }
            },
            child: const Icon(Icons.calendar_today),
          ),
        ),
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
      ),
    );
  }

  _formateDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return '${date.year}-${date.month}-${date.day}';
  }
}
