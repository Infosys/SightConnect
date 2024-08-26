import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormRadio extends StatelessWidget {
  const FormRadio({
    super.key,
    required this.field,
    this.onChanged,
  });

  final Object field;
  final Function(Object?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final ElementElementClassEntity fieldEntity =
        field as ElementElementClassEntity;

    Object? getInitialValue() {
      final Object? initialValue = fieldEntity.initialValue;
      if (initialValue != null &&
          fieldEntity.choices!.any((item) => item.name == initialValue)) {
        return initialValue;
      }
      return null;
    }

    return FormBuilderRadioGroup<Object?>(
      initialValue: getInitialValue(),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      wrapDirection: Axis.vertical,
      wrapAlignment: WrapAlignment.start,
      wrapRunAlignment: WrapAlignment.start,
      separator: const SizedBox(height: 10),
      name: fieldEntity.name,
      decoration: InputDecoration(
        hintText: fieldEntity.name,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
      onChanged: onChanged,
      validator: fieldEntity.isRequired
          ? FormBuilderValidators.compose([FormBuilderValidators.required()])
          : null,
      options: fieldEntity.choices!
          .map((element) => FormBuilderFieldOption<Object?>(
                value: element.name,
                child: Text(element.title),
              ))
          .toList(),
    );
  }
}
