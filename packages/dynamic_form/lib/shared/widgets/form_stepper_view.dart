import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/provider/dynamic_form_validation_provider.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/shared/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormStepperView extends ConsumerStatefulWidget {
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
  ConsumerState<FormStepperView> createState() => _PageWidgetState();
}

class _PageWidgetState extends ConsumerState<FormStepperView> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    final validationList =
        ref.read(dynamicFormValidationProvider).validationList;
    Log.d('Validation List: $validationList');
    if (widget.pages.isEmpty) {
      return Container();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Stepper(
            elevation: 0,
            margin: const EdgeInsets.all(0),
            type: StepperType.horizontal,
            physics: const ClampingScrollPhysics(),
            currentStep: currentStep,
            stepIconMargin: EdgeInsets.zero,
            stepIconHeight: 24,
            onStepTapped: (step) {
              setState(() {
                currentStep = step;
              });
            },
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
            controlsBuilder: (context, _) {
              return Row(
                children: [
                  if (currentStep < widget.pages.length - 1)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          _validatePanel(currentStep);
                          if (currentStep < widget.pages.length - 1) {
                            setState(() {
                              currentStep++;
                            });
                          }
                        },
                        child: const Text('Next'),
                      ),
                    ),
                  if (currentStep > 0)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          if (currentStep > 0) {
                            setState(() {
                              currentStep--;
                            });
                          }
                        },
                        child: const Text('Back'),
                      ),
                    ),
                ],
              );
            },
            steps: widget.pages.asMap().entries.map((entry) {
              final index = entry.key;
              final panel = entry.value;
              return Step(
                stepStyle: StepStyle(
                  indexStyle: TextStyle(
                    color: currentStep == index ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1,
                  ),
                  connectorColor: Colors.black45,
                  connectorThickness: 1,
                  color: currentStep == index
                      ? Theme.of(context).primaryColor
                      : Colors.white,
                ),
                isActive: currentStep == index,
                title: const SizedBox(),
                content: PageWidget(
                  elements: panel.elements,
                  formKey: widget.formKey,
                ),
              );
            }).toList(),
          ),
        ),
        if (currentStep == widget.pages.length - 1)
          SubmitBtn(
            key: widget.key,
            onPressed: _handleSubmit,
          )
      ],
    );
  }

  void _handleSubmit() {
    _validatePanel(currentStep);
    final validationList =
        ref.read(dynamicFormValidationProvider).validationList;
    Log.d('Validation List: $validationList');
    if (validationList.every((status) => status)) {
      widget.onSubmit?.call();
    }
  }

  void _validatePanel(int pageIndex) {
    widget.formKey.currentState?.save();
    final page = widget.pages[pageIndex];
    for (final element in page.elements) {
      for (final field in element.elements) {
        final fieldValue = widget.formKey.currentState?.value[field.name];
        Log.d(
            'Validating field: ${field.name}, value: $fieldValue, isRequired: ${field.isRequired}');
        if (field.isRequired && fieldValue == null) {
          ref
              .read(dynamicFormValidationProvider)
              .updateValidation(pageIndex, false);
          return;
        }
      }
    }
    ref.read(dynamicFormValidationProvider).updateValidation(pageIndex, true);
  }
}
