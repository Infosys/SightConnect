import 'package:flutter/material.dart';

void showFormExitDialog(BuildContext context, {required VoidCallback onSave}) {
  showDialog(
    context: context,
    builder: (context) {
      return FormExitDialog(onSave: onSave);
    },
  );
}

class FormExitDialog extends StatelessWidget {
  final VoidCallback onSave;

  const FormExitDialog({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text(
        'Unsaved Changes',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      content: const Text(
        'You have unsaved changes. Would you like to save them before exiting?',
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            onSave();
            Navigator.of(context).pop();
          },
          child: const Text('Save as Draft'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context)
              ..pop()
              ..pop();
          },
          child: const Text('Discard'),
        ),
      ],
    );
  }
}
