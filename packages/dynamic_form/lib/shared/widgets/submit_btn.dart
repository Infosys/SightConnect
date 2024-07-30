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
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 32.0,
              ),
            ),
            onPressed: onPressed,
            child: const Text('Submit Form'),
          ),
        ],
      ),
    );
  }
}
