import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormChip extends HookWidget {
  const FormChip({
    super.key,
    required this.field,
    this.onChanged,
  });

  final Object field;
  final Function(Object?)? onChanged;

  Object? getInitialValue() {
    try {
      final ElementClassEntity fieldEntity = field as ElementClassEntity;
      return fieldEntity.initialValue;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ElementClassEntity fieldEntity = field as ElementClassEntity;
    final options = fieldEntity.choices!;
    var selectedValue = useState<Object>(getInitialValue() ?? '');

    return FormBuilderChoiceChip<Object?>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: getInitialValue(), // Set the initial value
      name: fieldEntity.name,
      spacing: 10,
      runSpacing: 10,
      avatarBorder: const CircleBorder(),
      decoration: InputDecoration(
        labelText: fieldEntity.title,
        labelStyle: const TextStyle(color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 20.0,
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      selectedColor: Theme.of(context).primaryColor,
      onChanged: (value) {
        selectedValue.value = value!;
        onChanged?.call(value);
      },
      validator: fieldEntity.isRequired
          ? FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ])
          : null,
      options: options
          .map((option) => FormBuilderChipOption<Object?>(
                value: option.name,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    option.title,
                    style: TextStyle(
                      color: selectedValue.value == option.name
                          ? Colors.white
                          : Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
