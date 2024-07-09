import 'package:flutter/material.dart';

class ErrorDisplayWidget extends StatelessWidget {
  const ErrorDisplayWidget({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            ),
            Text(
              stackTrace ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
