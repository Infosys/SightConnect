import 'dart:convert';
import 'dart:developer';

import 'package:dynamic_form/responsive.dart';
import 'package:dynamic_form/widgets/app_card.dart';
import 'package:dynamic_form/widgets/error_widget.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_data_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_image.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:dynamic_form/widgets/loader_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({
    super.key,
  });
  Future<String> _loadJson() async {
    await Future.delayed(const Duration(seconds: 2));
    return rootBundle.loadString("packages/dynamic_form/assets/test_form.json");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadJson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final sections = jsonDecode(snapshot.data!)["sections"] as List;
          return FormLayout(sections: sections, title: "Dynamic Form");
        } else if (snapshot.hasError) {
          return ErrorDisplayWidget(error: snapshot.error);
        } else {
          return const LoaderWidget();
        }
      },
    );
  }
}

class FormLayout extends StatelessWidget {
  const FormLayout({
    super.key,
    required this.sections,
    required this.title,
  });
  final String title;
  final List<dynamic> sections;

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
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var section in sections)
                AppCard(
                  title: section["sectionTitle"] as String,
                  marginBottom: 16,
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      ..._buildFields(section["fields"], formKey).map(
                        (widget) => SizedBox(
                          width: Responsive.isMobile(context)
                              ? double.infinity
                              : 300,
                          child: widget,
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 32.0,
                      ),
                    ),
                    onPressed: () {
                      formKey.currentState?.save();

                      if (formKey.currentState!.validate()) {
                        log(formKey.currentState!.value.toString());
                      } else {
                        print('Form validation failed');
                      }
                    },
                    child: const Text('Submit Form'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFields(
      List<dynamic> fields, GlobalKey<FormBuilderState> key) {
    return fields.map<Widget>((field) {
      switch (field["type"]) {
        case "text_field":
          return FormTextField(
            map: field,
            onChanged: (value) {
              debugPrint(value);
            },
          );

        case "dropdown":
          return FormDropDown(
              map: field,
              onChanged: (value) {
                debugPrint(value);
              });

        case "date_time":
          return FormDataTimePicker(
            name: field["label"] as String,
            onChanged: (value) {
              debugPrint(value.toString());
            },
          );

        case "radio":
          return FormRadio(
            map: field,
            onChanged: (value) {
              debugPrint(value.toString());
            },
          );
        case "check":
          return FormCheckbox(
            map: field,
            onChanged: (value) {
              debugPrint(value.toString());
            },
          );
        case "image":
          return FormImage(
            onChanged: (value) {
              key.currentState?.validate();
              key.currentState!.setInternalFieldValue('Image', value.path);
              debugPrint(value.toString());
            },
          );
        case "switch":
          return FormSwitch(
            map: field,
            onChanged: (value) {
              debugPrint(value.toString());
            },
          );

        case "chips":
          return FormChip(
            map: field,
            onChanged: (value) {
              debugPrint(value.toString());
            },
          );
        default:
          return Container();
      }
    }).toList();
  }
}
