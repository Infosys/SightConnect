import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/widgets/app_stepper.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:flutter/material.dart' hide Stepper;
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
  final ScrollController _scrollController = ScrollController();

  void _nextStep() {
    if (_currentStep < widget.pages.length - 1) {
      setState(() {
        _currentStep++;
        _scrollToTop();
      });
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
        _scrollToTop();
      });
    }
  }

  void _onStepTapped(int index) {
    setState(() {
      _currentStep = index;
      _scrollToTop();
    });
  }

  void _handleSubmit() {
    widget.onSubmit?.call();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pages.isEmpty) {
      return Container();
    } else if (widget.pages.length == 1) {
      return SingleChildScrollView(
        controller: _scrollController,
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

    return AppStepper(
      currentStep: _currentStep,
      onStepTapped: _onStepTapped,
      onStepContinue: _nextStep,
      onStepCancel: _previousStep,
      steps: widget.pages.map((page) {
        return AppStep(
          isActive: _currentStep == widget.pages.indexOf(page),
          state: AppStepState.indexed,
          title: Text(page.name),
          content: PageWidget(
            readOnly: widget.readOnly,
            elements: page.elements,
            formKey: widget.formKey,
            name: page.name,
          ),
        );
      }).toList(),
      type: widget.axis == Axis.horizontal
          ? AppStepperType.horizontal
          : AppStepperType.vertical,
      controller: _scrollController,
    );
  }
}
