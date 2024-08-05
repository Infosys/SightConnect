import 'package:flutter/material.dart';

class SubmitBtn extends StatelessWidget {
  const SubmitBtn({
    super.key,
    this.onPressed,
    this.padding = const EdgeInsets.all(16.0),
  });
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Submit Form'),
          ),
        ],
      ),
    );
  }
}
