import 'dart:convert';

import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Form"),
      ),
      body: FutureBuilder(
        future: rootBundle
            .loadString("packages/dynamic_form/assets/test_form.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final fields = jsonDecode(snapshot.data!)["fields"] as List;
            return FormLayout(fields: fields);
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
  });
  final List<dynamic> fields;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FormBuilder(
        key: formKey,
        child: Column(
          children: [
            FormTextField(
              map: fields[0],
              onChanged: (value) {
                debugPrint(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
