import 'package:dynamic_form/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

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
    final List<Map<String, dynamic>> options =
        map['options'] as List<Map<String, dynamic>>;

    return AppCard(
      child: FormBuilderChoiceChip<dynamic>(
        name: label,
        decoration: InputDecoration(
          labelText: label,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        ),
        onChanged: onChanged,
        validator:
            FormBuilderValidators.compose([FormBuilderValidators.required()]),
        options: options
            .map(
              (option) => FormBuilderChipOption<dynamic>(
                value: option['value'],
                child: Text(option['label'] as String),
              ),
            )
            .toList(),
      ),
    );
  }
}
