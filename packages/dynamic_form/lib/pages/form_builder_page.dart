import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/shared/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final ValueNotifier<bool> globalRebuildNotifier = ValueNotifier<bool>(false);

class FormBuilderPage extends StatelessWidget {
  FormBuilderPage({
    super.key,
    required this.pages,
    required this.title,
    required this.onSubmit,
  });
  final String title;
  final List<PageEntity> pages;
  final Function(Map<String, dynamic>?)? onSubmit;

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
        child: FormBuilder(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var page in pages)
                PageWidget(
                  name: page.name,
                  elements: page.elements,
                  formKey: formKey,
                ),
              const SizedBox(height: 20),
              SubmitBtn(onPressed: _handleSubmit)
            ],
          ),
        ),
      ),
    );
  }

  /// Handles the form submission.
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
