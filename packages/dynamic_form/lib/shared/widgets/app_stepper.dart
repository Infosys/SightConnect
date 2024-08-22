import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppStepper extends StatefulWidget {
  const AppStepper({
    super.key,
    required this.pages,
    required this.formKey,
    required this.onSubmit,
    this.axis = Axis.horizontal,
  });

  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final VoidCallback? onSubmit;
  final Axis axis;

  @override
  AppStepperState createState() => AppStepperState();
}

class AppStepperState extends State<AppStepper> {
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
    log("AppStepper");
    if (widget.pages.isEmpty) {
      return Container();
    } else if (widget.pages.length == 1) {
      return SingleChildScrollView(
        child: PageWidget(
          elements: widget.pages.first.elements,
          formKey: widget.formKey,
          name: widget.pages.first.name,
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
          state: StepState.indexed,
          title: const SizedBox(),
          content: PageWidget(
            elements: page.elements,
            formKey: widget.formKey,
            name: page.name,
          ),
        );
      }).toList(),
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Row(
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
                onPressed: _handleSubmit,
                child: const Text('SUBMIT'),
              ),
          ],
        );
      },
    );
  }
}
