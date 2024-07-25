import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/shared/widgets/submit_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormBuilderPage extends StatelessWidget {
  const DynamicFormBuilderPage({
    super.key,
    required this.pages,
    required this.title,
    required this.onSubmitted,
  });
  final String title;
  final List<PageEntity> pages;
  final Function(Map<String, dynamic>?)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
              SubmitBtn(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState?.save();
                    Log.f(formKey.currentState?.value);
                    onSubmitted!(formKey.currentState?.value);
                  } else {
                    debugPrint('Form validation failed');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
