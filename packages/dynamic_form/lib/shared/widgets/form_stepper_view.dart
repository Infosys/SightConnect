import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/app_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormStepperView extends StatefulWidget {
  const FormStepperView({
    super.key,
    required this.name,
    required this.pages,
    required this.formKey,
    required this.onSubmit,
    this.readOnly = false,
  });
  final String name;
  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final VoidCallback? onSubmit;
  final bool readOnly;

  @override
  State<FormStepperView> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<FormStepperView> {
  @override
  Widget build(BuildContext context) {
    return AppStepper(
      readOnly: widget.readOnly,
      axis: Axis.horizontal,
      pages: widget.pages,
      formKey: widget.formKey,
      onSubmit: widget.onSubmit,
    );
  }
}
