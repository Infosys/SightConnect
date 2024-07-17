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

  final ElementElementClassEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final options = field.mapValueChoices!;
    var selectedValue = useState<String>('');

    return FormBuilderChoiceChip<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: field.name,
      spacing: 10,
      runSpacing: 10,
      avatarBorder: const CircleBorder(),
      decoration: InputDecoration(
        labelText: field.title,
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
      validator: field.isRequired
          ? FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ])
          : null,
      options: options
          .map((option) => FormBuilderChipOption(
                value: option.value,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    option.text,
                    style: TextStyle(
                      color: selectedValue.value == option.value
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
