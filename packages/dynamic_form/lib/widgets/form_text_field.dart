import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.map,
    this.onChanged,
  });
  final Map<String, dynamic>? map;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.always,
      readOnly: map?['readOnly'] ?? false,
      initialValue: map?['initialValue'],
      name: map?['label'],
      decoration: InputDecoration(
        // labelText: map?['label'],
        hintText: map?['hint'],
      ),
      validator: map?['required'] == true
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      keyboardType: map?['keyBoardType'] == 'number'
          ? TextInputType.number
          : TextInputType.text,
      // textInputAction: TextInputAction.next,
    );
  }
}
