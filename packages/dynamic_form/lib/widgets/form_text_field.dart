import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.map,
  });
  final Map<String, dynamic>? map;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Enter your name',
        border: OutlineInputBorder(),
      ),
    );
  }
}
