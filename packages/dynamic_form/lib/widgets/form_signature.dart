import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';

class FormSignature extends StatelessWidget {
  const FormSignature({
    super.key,
    required this.field,
    required this.formKey,
  });
  final ElementClassEntity field;

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilderSignaturePad(name: "");
  }
}
