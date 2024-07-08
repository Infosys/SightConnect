import 'package:dynamic_form/widgets/app_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormRadio extends StatelessWidget {
  const FormRadio({
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

    return AppCard(
      child: FormBuilderRadioGroup(
        name: label, //
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
              (option) => FormBuilderFieldOption(
                value: option['value'],
                child: Text(option['label'] as String),
              ),
            )
            .toList(),
      ),
    );
  }
}
