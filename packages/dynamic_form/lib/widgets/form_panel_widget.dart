import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormPanelWidget extends StatelessWidget {
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;
  const FormPanelWidget({
    super.key,
    required this.field,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    if (field.elements == null) {
      return Container();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field.title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        field.repeats
            ? _getRepeatingField(field, formKey)
            : Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: field.elements!.map((field) {
                  return getField(field, formKey);
                }).toList(),
              ),
      ],
    );
  }

  Widget _getRepeatingField(
    ElementClassEntity field,
    GlobalKey<FormBuilderState> formKey,
  ) {
    final int maxRepeats = field.maxRepeat ?? 1;
    final int minRepeats = field.minRepeat ?? 1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < maxRepeats; i++)
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: field.elements!.map((field) {
                  return getField(field, formKey);
                }).toList(),
              ),
              if (i + 1 < maxRepeats)
                TextButton(
                  onPressed: () {},
                  child: const Text('Remove - '),
                ),
            ],
          ),
        TextButton(onPressed: () {}, child: const Text('Add + ')),
      ],
    );
  }
}
