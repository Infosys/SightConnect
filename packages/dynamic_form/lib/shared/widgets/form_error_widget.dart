import 'package:flutter/material.dart';

class FormErrorWidget extends StatelessWidget {
  const FormErrorWidget({
    super.key,
    required this.error,
    this.stackTrace,
  });
  final Object? error;
  final String? stackTrace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          error.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
