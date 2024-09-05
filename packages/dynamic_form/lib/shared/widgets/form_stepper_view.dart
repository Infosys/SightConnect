import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormStepperView extends StatefulWidget {
  const FormStepperView({
    super.key,
    required this.pages,
    required this.formKey,
    required this.onSubmit,
    this.axis = Axis.horizontal,
    this.readOnly = false,
  });

  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final VoidCallback? onSubmit;
  final Axis axis;
  final bool readOnly;

  @override
  FormStepperViewState createState() => FormStepperViewState();
}

class FormStepperViewState extends State<FormStepperView> {
  int _currentStep = 0;

  void _nextStep() {
    if (_currentStep < widget.pages.length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  void _onStepTapped(int index) {
    setState(() {
      _currentStep = index;
    });
  }

  void _handleSubmit() {
    widget.onSubmit?.call();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pages.isEmpty) {
      return Container();
    } else if (widget.pages.length == 1) {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PageWidget(
              readOnly: widget.readOnly,
              elements: widget.pages.first.elements,
              formKey: widget.formKey,
              name: widget.pages.first.name,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: widget.readOnly ? null : _handleSubmit,
                  child: const Text('SUBMIT'),
                ),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      );
    }

    return Stepper(
      elevation: 0,
      physics: const ClampingScrollPhysics(),
      type: widget.axis == Axis.horizontal
          ? StepperType.horizontal
          : StepperType.vertical,
      currentStep: _currentStep,
      onStepTapped: _onStepTapped,
      onStepContinue: _nextStep,
      onStepCancel: _previousStep,
      steps: widget.pages.map((page) {
        return Step(
          isActive: _currentStep == widget.pages.indexOf(page),
          state: StepState.indexed,
          title: const SizedBox(),
          content: PageWidget(
            readOnly: widget.readOnly,
            elements: page.elements,
            formKey: widget.formKey,
            name: page.name,
          ),
        );
      }).toList(),
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (_currentStep > 0)
                OutlinedButton(
                  onPressed: details.onStepCancel,
                  child: const Text('BACK'),
                ),
              if (_currentStep < widget.pages.length - 1)
                ElevatedButton(
                  onPressed: details.onStepContinue,
                  child: const Text('NEXT'),
                ),
              if (_currentStep == widget.pages.length - 1)
                ElevatedButton(
                  onPressed: widget.readOnly ? null : _handleSubmit,
                  child: const Text('SUBMIT'),
                ),
            ],
          ),
        );
      },
    );
  }
}
