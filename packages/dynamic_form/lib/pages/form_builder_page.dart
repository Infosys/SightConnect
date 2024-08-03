import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/form_panel_view.dart';
import 'package:dynamic_form/shared/widgets/form_stepper_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final ValueNotifier<bool> globalRebuildNotifier = ValueNotifier<bool>(false);

class FormBuilderPage extends StatelessWidget {
  FormBuilderPage({
    super.key,
    required this.pages,
    required this.title,
    required this.onSubmit,
    required this.layoutType,
  });
  final String title;
  final List<PageEntity> pages;
  final Function(Map<String, dynamic>?)? onSubmit;
  final FormLayoutType layoutType;

  /// The key for the form.
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: FormBuilder(
            key: formKey,
            child: _getFormLayout(),
          ),
        ),
      ),
    );
  }

  _getFormLayout() {
    switch (layoutType) {
      case FormLayoutType.STEPPER:
        return FormStepperView(
          formKey: formKey,
          name: title,
          pages: pages,
          onSubmit: _handleSubmit,
        );

      default:
        return FormPanelView(
          formKey: formKey,
          name: title,
          pages: pages,
          onSubmit: _handleSubmit,
        );
    }
  }

  void _handleSubmit() {
    try {
      if (formKey.currentState!.validate()) {
        formKey.currentState?.save();
        Log.i('Form submitted successfully');
        Log.f(formKey.currentState?.value);
        onSubmit?.call(formKey.currentState?.value);
      } else {
        Log.e('Form validation failed');
      }
    } catch (e, stackTrace) {
      Log.e('Error occurred: $e');
      Log.e('Stack trace: $stackTrace');
    }
  }
}
