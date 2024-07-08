import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormCheckBox extends StatelessWidget {
  const FormCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderCheckbox(
      name: 'accept_terms',
      initialValue: false,
      onChanged: (value) {},
      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'I have read and agree to the ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Terms and Conditions',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      validator: (value) {
        return null;
      },
    );
  }
}
