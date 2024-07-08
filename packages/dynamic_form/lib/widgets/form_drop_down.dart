import 'package:dynamic_form/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormDropDown extends StatelessWidget {
  const FormDropDown({
    super.key,
    required this.map,
    this.onChanged,
  });

  final Map<String, dynamic> map;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = map['label'] as String;
    final String hint = map['hint'] as String;
    final List<DropdownMenuItem<String>> options = (map['options'] as List)
        .cast<Map<String, dynamic>>()
        .map((option) => DropdownMenuItem<String>(
              value: option['value'] as String,
              child: Text(option['label'] as String),
            ))
        .toList();
    final String? initialValue = map['initialValue'] as String?;

    return AppCard(
      child: FormBuilderDropdown<String>(
        name: label, // Use label as the field name
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        ),
        items: options,
        onChanged: onChanged,
        initialValue: initialValue,
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
      ),
    );
  }
}
