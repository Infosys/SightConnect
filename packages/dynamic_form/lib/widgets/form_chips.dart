import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormChip extends StatelessWidget {
  const FormChip({
    super.key,
    required this.map,
    this.onChanged,
  });

  final Map<String, dynamic> map;
  final Function(dynamic)? onChanged;

  @override
  Widget build(BuildContext context) {
    final String label = map['label'] as String;
    final options = map['options'] as List;

    return FormBuilderChoiceChip<dynamic>(
      name: label,
      decoration: InputDecoration(
        labelText: label,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      options: options
          .map(
            (option) => FormBuilderChipOption<dynamic>(
              value: option['value'],
              child: Text(option['label'] as String),
            ),
          )
          .toList(),
    );
  }
}
