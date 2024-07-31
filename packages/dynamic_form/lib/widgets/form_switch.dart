import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormSwitch extends HookWidget {
  const FormSwitch({
    super.key,
    required this.field,
    required this.onChanged,
  });

  final ElementElementClassEntity field;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    final selected = useState<bool?>(null);
    return FormBuilderSwitch(
      autofocus: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      name: field.name,
      initialValue: selected.value,
      validator: field.isRequired
          ? FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ])
          : null,
      title: Text(field.name),
      onChanged: (value) {
        selected.value = value ?? false;
        onChanged(value ?? false);
      },
    );
  }
}
