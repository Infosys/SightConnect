import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/modals/dynamic_form_modals.dart';
import 'package:dynamic_form/shared/utlities/form_exit_dialog.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_panel_view.dart';
import 'package:dynamic_form/shared/widgets/form_stepper_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderPage extends StatefulWidget {
  const FormBuilderPage({
    super.key,
    required this.pages,
    required this.title,
    required this.onSubmit,
    required this.layoutType,
    required this.backButtonIcon,
    required this.enableDraft,
    required this.canPop,
    required this.readOnly,
  });
  final String title;
  final List<PageEntity> pages;
  final Function(Map<String, dynamic>? data, DynamicFormSavingType mode)?
      onSubmit;
  final FormLayoutType layoutType;
  final IconData backButtonIcon;
  final bool canPop;
  final bool enableDraft;
  final bool readOnly;
  @override
  State<FormBuilderPage> createState() => _FormBuilderPageState();
}

class _FormBuilderPageState extends State<FormBuilderPage> {
  late GlobalKey<FormBuilderState> formKey;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormBuilderState>();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: widget.canPop,
      onPopInvoked: _onPopInvoked,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            if (widget.enableDraft)
              TextButton.icon(
                onPressed: widget.readOnly ? null : _handleDraft,
                label: const Text(
                  'Save as Draft',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
          leading: IconButton(
            icon: Icon(widget.backButtonIcon),
            onPressed: () {
              if (widget.canPop) {
                showFormExitDialog(context, onSave: _handleDraft);
              } else {
                Navigator.pop(context);
              }
            },
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FormBuilder(
            enabled: !widget.readOnly,
            key: formKey,
            child: _getFormLayout(),
          ),
        ),
      ),
    );
  }

  _onPopInvoked(bool value) {
    if (value) {
      return;
    }
    if (widget.canPop) {
      showFormExitDialog(context, onSave: _handleSubmit);
    } else {
      Navigator.pop(context);
    }
  }

  _getFormLayout() {
    switch (widget.layoutType) {
      case FormLayoutType.STEPPER:
        return FormStepperView(
          formKey: formKey,
          pages: widget.pages,
          onSubmit: _handleSubmit,
          readOnly: widget.readOnly,
          axis: Axis.horizontal,
        );

      default:
        return SingleChildScrollView(
          child: FormPanelView(
            formKey: formKey,
            name: widget.title,
            pages: widget.pages,
            onSubmit: _handleSubmit,
          ),
        );
    }
  }

  void _handleDraft() {
    formKey.currentState?.save();
    widget.onSubmit?.call(
      formKey.currentState?.value,
      DynamicFormSavingType.DRAFT,
    );
  }

  void _handleSubmit() {
    try {
      if (formKey.currentState!.validate()) {
        formKey.currentState?.save();
        Log.i('Form submitted successfully');
        // Log.f(formKey.currentState?.value);
        widget.onSubmit?.call(
          formKey.currentState?.value,
          DynamicFormSavingType.SAVE,
        );
      } else {
        Log.e('Form validation failed');
        DynamicFormModals.showSnackBar(
          context: context,
          message: 'Please fill all required fields',
        );
      }
    } catch (e, stackTrace) {
      Log.e('Error occurred: $e');
      Log.e('Stack trace: $stackTrace');
    }
  }
}
