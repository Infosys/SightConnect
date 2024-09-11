import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../data/entities/dynamic_form_json_entity.dart';

class FormTextField extends HookWidget {
  const FormTextField({
    super.key,
    required this.field,
    required this.formKey,
    this.onChanged,
  });

  final ElementClassEntity field;
  final Function(String?)? onChanged;
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    if (field.name ==
        'corneaRetrievalRequest.hemodilution.properties.bloodProducts.totalTranfused') {
      print('Initial Value: ${field.initialValue}');
      print('Title: ${field.title}');
      print('Description: ${field.description}');
      print('FieldName: ${field.name}');
      //print smae filed name for form text field
      print("FormKey: ${formKey.currentState?.fields[field.name]}");
    }
    final controller =
        useTextEditingController(text: field.initialValue?.toString());

    return FormBuilderTextField(
      key: ValueKey(field.name), //
      controller: controller,
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: field.name,
      keyboardType: _getKeyBoardType(),
      decoration: InputDecoration(
        labelText: field.title,
        hintText: field.description,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),

      validator: (value) {
        value = value ?? '';
        if (field.isRequired && value.isEmpty) {
          return field.requiredErrorText;
        }

        if (field.validators.isNotEmpty) {
          for (var validator in field.validators) {
            if (validator.type == 'regex') {
              if (!RegExp(validator.regex).hasMatch(value)) {
                return validator.text;
              }
            }
          }
        }

        return null;
      },
      onChanged: onChanged,
      enabled: field.readOnly ? false : true,
    );
  }

  _getKeyBoardType() {
    switch (field.inputType) {
      case "TEXT":
        return TextInputType.text;
      case "INTEGER":
        return TextInputType.number;
      case "DOUBLE":
        return const TextInputType.numberWithOptions(decimal: true);
      default:
        return TextInputType.text;
    }
  }
}
