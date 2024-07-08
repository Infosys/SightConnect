import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FormBuilder(
          key: formKey,
          child: Column(
            children: [
              FormTextField(
                map: const {
                  "type": "text_field",
                  "required": true,
                  "readOnly": false,
                  "initialValue": null,
                  "keyBoardType": "default",
                  "label": "First Name",
                  "hint": "Enter your first name",
                  "validation": {
                    "pattern": "^[a-zA-Z]+\$",
                    "errorMessage": "Please enter a valid first name."
                  }
                },
                onChanged: (value) {
                  debugPrint(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
