import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/shared/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormStepperView extends StatefulWidget {
  const FormStepperView({
    super.key,
    required this.name,
    required this.pages,
    required this.formKey,
    required this.onSubmit,
  });
  final String name;
  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final VoidCallback? onSubmit;

  @override
  State<FormStepperView> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<FormStepperView> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.pages.isEmpty) {
      return Container();
    }

    return Column(
      children: [
        Stepper(
          currentStep: currentStep,
          onStepContinue: () {
            if (currentStep < widget.pages.length - 1) {
              setState(() {
                currentStep++;
              });
            }
          },
          onStepCancel: () {
            if (currentStep > 0) {
              setState(() {
                currentStep--;
              });
            }
          },
          steps: widget.pages.map((panel) {
            return Step(
              title: Text(panel.name),
              content: PageWidget(
                elements: panel.elements,
                formKey: widget.formKey,
              ),
            );
          }).toList(),
        ),
        if (currentStep == widget.pages.length - 1)
          SubmitBtn(
            key: widget.key,
            onPressed: widget.onSubmit,
          )
      ],
    );
  }
}
