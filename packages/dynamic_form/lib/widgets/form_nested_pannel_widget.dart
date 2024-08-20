import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
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
        const SizedBox(height: 10),
        Text(
          field.title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10),
        ...field.elements!.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: getField(e, formKey),
          );
        }),
      ],
    );
  }
}
