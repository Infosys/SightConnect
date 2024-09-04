import 'package:dynamic_form/shared/utlities/expression_eval.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../data/entities/dynamic_form_json_entity.dart';

class FormTextField extends StatelessWidget {
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
    return Visibility(
        visible:
            computeExp(field.visibleIf, formKey.currentState?.instantValue),
        child: FormBuilderTextField(
          autofocus: false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: field.initialValue?.toString(),
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
        ));
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

bool computeExp(String? expression, Map<String, dynamic>? valueMap) {
  if (expression == null || valueMap == null) {
    return true;
  }
  try {
    var exp = ExpressionFactory.parse(expression);
    return exp.evaluate(valueMap);
  } catch (e) {
    return false;
  }
}
