import 'package:dynamic_form/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDataTimePicker extends StatefulWidget {
  const FormDataTimePicker({
    super.key,
    required this.name,
    this.onChanged,
  });

  final String name;
  final Function(DateTime?)? onChanged;

  @override
  State<FormDataTimePicker> createState() => _FormDataTimePickerState();
}

class _FormDataTimePickerState extends State<FormDataTimePicker> {
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    final String labelText = widget.name;

    return AppCard(
      title: "Choose Date and Time",
      child: FormBuilderTextField(
        name: labelText,
        readOnly: true,
        initialValue: selectedDateTime?.toString(),
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          suffixIcon: InkWell(
            onTap: () => _showDateTimePicker(context),
            child: const Icon(Icons.calendar_today),
          ),
        ),
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
      ),
    );
  }

  void _showDateTimePicker(BuildContext context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (selectedDate == null) return;

    final selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );
    if (selectedTime == null) return;

    selectedDateTime = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime.hour,
      selectedTime.minute,
    );
    widget.onChanged?.call(selectedDateTime);
    setState(() {}); // Update UI with selected date
  }
}
