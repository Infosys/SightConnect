import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormDataTimePicker extends StatelessWidget {
  const FormDataTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: 'date',
      initialEntryMode: DatePickerEntryMode.calendar,
      initialValue: DateTime.now(),
      inputType: InputType.both,
      decoration: InputDecoration(
        labelText: 'Appointment Time',
        suffixIcon: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // _formKey.currentState!.fields['date']?.didChange(null);
          },
        ),
      ),
      initialTime: const TimeOfDay(hour: 8, minute: 0),
      // locale: const Locale.fromSubtags(languageCode: 'fr'),
    );
  }
}
