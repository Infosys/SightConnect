import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormSwitch extends HookWidget {
  const FormSwitch({
    super.key,
    required this.map,
    required this.onChanged,
  });

  final Map<String, dynamic> map;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    final selected = useState(map['initialValue']);
    return FormBuilderSwitch(
      name: map['label'],
      initialValue: selected.value,
      validator:
          FormBuilderValidators.required(errorText: 'This field is required'),
      title: Text(map['label']),
      onChanged: (value) {
        selected.value = value;
        onChanged(value ?? false);
      },
    );
  }
}
