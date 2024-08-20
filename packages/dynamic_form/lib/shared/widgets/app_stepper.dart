import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
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
  final List<bool> _validationList = [];

  void _nextStep() {
    _validatePanel(_currentStep);
    if (_currentStep < widget.pages.length - 1) {
      setState(() => _currentStep++);
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
    }
  }

  void _onStepTapped(int index) => setState(() => _currentStep = index);

  void _handleSubmit() {
    _validatePanel(_currentStep);
    widget.onSubmit?.call();
  }

  void _validatePanel(int pageIndex) {
    widget.formKey.currentState?.save();
    final page = widget.pages[pageIndex];
    for (final element in page.elements) {
      for (final field in element.elements) {
        final fieldValue = widget.formKey.currentState?.value[field.name];
        Log.d(
            'Validating field: ${field.name}, value: $fieldValue, isRequired: ${field.isRequired}, ,currentIndex: $pageIndex');
        if (field.isRequired && fieldValue == null) {
          _updateValidation(pageIndex, false);
          return;
        }
      }
    }
    _updateValidation(pageIndex, true);
  }

  void _updateValidation(int index, bool value) {
    setState(() {
      if (index < _validationList.length) {
        _validationList[index] = value;
      } else {
        _validationList.add(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.pages.isEmpty) {
      return Container();
    }
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _StepLayout(
            axis: widget.axis,
            stepNames: widget.pages.map((e) => e.name).toList(),
            validationList: _validationList,
            pages: widget.pages,
            formKey: widget.formKey,
            currentStep: _currentStep,
            onStepTapped: _onStepTapped,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 8.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_currentStep > 0)
                        OutlinedButton(
                          onPressed: _previousStep,
                          child: const Text('BACK'),
                        ),
                      if (_currentStep < widget.pages.length - 1)
                        ElevatedButton(
                          onPressed: _nextStep,
                          child: const Text('NEXT'),
                        ),
                      if (_currentStep == widget.pages.length - 1)
                        ElevatedButton(
                          onPressed: _handleSubmit,
                          child: const Text('SUBMIT'),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _StepLayout extends StatelessWidget {
  const _StepLayout({
    required this.axis,
    required this.stepNames,
    required this.validationList,
    required this.pages,
    required this.formKey,
    required this.currentStep,
    required this.onStepTapped,
  });

  final Axis axis;
  final List<String> stepNames;
  final List<bool> validationList;
  final List<PageEntity> pages;
  final GlobalKey<FormBuilderState> formKey;
  final int currentStep;
  final void Function(int) onStepTapped;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? _buildHorizontalLayout(context)
        : _buildVerticalLayout(context);
  }

  Widget _buildHorizontalLayout(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildStepWidgets(context),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildStepIndicators(context),
        ),
        if (currentStep < pages.length)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: PageWidget(
              elements: pages[currentStep].elements,
              formKey: formKey,
            ),
          ),
      ],
    );
  }

  Widget _buildVerticalLayout(BuildContext context) {
    return Column(
      children: _buildStepWidgets(context),
    );
  }

  List<Widget> _buildStepWidgets(BuildContext context) {
    return List.generate(pages.length, (index) {
      return GestureDetector(
        onTap: () => onStepTapped(index),
        child: _buildStepWidget(context, index),
      );
    });
  }

  Widget _buildStepWidget(BuildContext context, int index) {
    return Container(
      width: 80,
      margin: const EdgeInsets.all(4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: axis == Axis.horizontal
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              color: _getStepColor(context, index),
              border: Border.all(
                color: _getBorderColor(context, index),
                width: 1,
              ),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: _getTextColor(context, index),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              stepNames[index],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: currentStep == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStepColor(BuildContext context, int index) {
    if (validationList.length == pages.length) {
      return currentStep == index
          ? Theme.of(context).primaryColor
          : validationList[index]
              ? Colors.white
              : Colors.red;
    } else {
      return currentStep == index
          ? Theme.of(context).primaryColor
          : Colors.white;
    }
  }

  Color _getBorderColor(BuildContext context, int index) {
    if (validationList.length == pages.length) {
      return currentStep == index
          ? Theme.of(context).primaryColor
          : validationList[index]
              ? Theme.of(context).primaryColor
              : Colors.red;
    } else {
      return Theme.of(context).primaryColor;
    }
  }

  Color _getTextColor(BuildContext context, int index) {
    if (validationList.length == pages.length) {
      return currentStep == index
          ? Colors.white
          : validationList[index]
              ? Colors.black
              : Colors.white;
    } else {
      return currentStep == index ? Colors.white : Colors.black;
    }
  }

  List<Widget> _buildStepIndicators(BuildContext context) {
    return List.generate(pages.length, (index) {
      return Container(
        margin: const EdgeInsets.all(4),
        width: 8,
        height: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentStep == index
              ? Theme.of(context).primaryColor
              : Colors.grey,
        ),
      );
    });
  }
}
