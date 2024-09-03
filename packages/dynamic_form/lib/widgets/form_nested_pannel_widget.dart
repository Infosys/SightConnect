import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/widgets/app_dynamic_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormNestedPannelWidget extends StatelessWidget {
  final ElementElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;
  const FormNestedPannelWidget({
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
        const SizedBox(height: 10),
        ...buildFields(field.elements, formKey),
      ],
    );
  }

  List<Widget> buildFields(
    List<ElementElementClassEntity>? fields,
    GlobalKey<FormBuilderState> key,
  ) {
    if (fields == null || fields.isEmpty) {
      return [];
    }

    return fields.map((ElementElementClassEntity field) {
      if (field.type == DynamicFormType.PANEL && field.repeats == true) {
        return AppDynamicPanel(
          appCardPadding: 0,
          readOnly: false,
          name: field.title,
          globalFormKey: key,
          minRepeat: field.minRepeat ?? 1,
          maxRepeat: field.maxRepeat ?? 1,
          panel: ElementElementClassEntity(
            initialValue: field.initialValue,
            name: field.name,
            elements: field.elements ?? [],
            repeats: field.repeats,
            type: FormPanelType.REPEATED_PANEL,
            minRepeat: field.minRepeat ?? 1,
            maxRepeat: field.maxRepeat ?? 1,
          ),
        );
      }

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: getField(field, formKey),
      );
    }).toList();
  }
}
