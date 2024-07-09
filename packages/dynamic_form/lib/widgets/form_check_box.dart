import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormCheckbox extends StatelessWidget {
  const FormCheckbox({
    super.key,
    required this.map,
    this.onChanged,
  });

  final Map<String, dynamic> map;
  final Function(List<dynamic>?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = map['label'] as String;
    final options = map['options'] as List;

    return FormBuilderCheckboxGroup(
      name: label, // Use label as the field name
      decoration: InputDecoration(
        labelText: label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),

      onChanged: onChanged,
      options: options
          .map((option) => FormBuilderFieldOption(
                value: option['value'],
                child: Text(option['label'] as String),
              ))
          .toList(),

      initialValue: map['initialValue'] as List<dynamic>?,
    );
  }
}
