import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ConditionalWidget extends StatelessWidget {
  final ElementElementClassEntity? field;
  final GlobalKey<FormBuilderState> formKey;

  const ConditionalWidget({
    super.key,
    required this.field,
    required this.formKey,
  });

  List<Widget> buildConditionalFields() {
    final List<Widget> widgets = [];

    final String? dependantField = field?.dependantField;
    String selectedValue =
        formKey.currentState?.fields[dependantField]?.value ?? '';
    for (final condition in field?.conditions ?? []) {
      if (condition.value == selectedValue) {
        for (final subField in condition.fields) {
          widgets.add(getField(subField, formKey));
        }
      }
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildConditionalFields(),
    );
  }
}
