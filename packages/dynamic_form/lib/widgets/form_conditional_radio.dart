import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/pages/dynamic_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormConditionalRadio extends HookWidget {
  const FormConditionalRadio({
    super.key,
    required this.field,
    this.onChanged,
  });

  final FieldEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<String>('');
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(field.label),
          const SizedBox(
            height: 12,
          ),
          Row(
              mainAxisSize: MainAxisSize.min,
              children: field.options
                  .map((option) => Row(
                        children: [
                          Radio(
                            value: option.value,
                            groupValue: field.initialValue,
                            onChanged: (value) {
                              selectedValue.value = value as String;
                              onChanged?.call(value);
                            },
                          ),
                          Text(option.label),
                        ],
                      ))
                  .toList()),
          if (field.optionType != null)
            Container(
              padding: const EdgeInsets.only(top: 12),
              child: getField(field.optionType![selectedValue.value],
                  GlobalKey<FormBuilderState>()),
            )
        ]);
  }
}
