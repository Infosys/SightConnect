import 'dart:convert';

import 'package:dynamic_form/responsive.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_data_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_image.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: rootBundle
            .loadString("packages/dynamic_form/assets/test_form.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fields = jsonDecode(snapshot.data!)["fields"] as List;
            return FormLayout(fields: fields, title: "Dynamic Form");
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class FormLayout extends StatelessWidget {
  const FormLayout({
    super.key,
    required this.fields,
    required this.title,
  });
  final String title;
  final List<dynamic> fields;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FormBuilder(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Wrap(
                  runAlignment: WrapAlignment.start,
                  alignment: WrapAlignment.start,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    ..._buildFields(fields).map(
                      (widget) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: Responsive.isMobile(context)
                              ? double.infinity
                              : 300,
                          child: widget,
                        ),
                      ),
                    ),
                  ],
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
                          print(formKey.currentState!.value);
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
      ),
    );
  }

  List<Widget> _buildFields(List<dynamic> fields) {
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
              debugPrint(value.toString());
            },
          );
        default:
          return Container();
      }
    }).toList();
  }
}
