import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
      title: Row(
        children: [
          Text(
            'Exit Form',
            style: applyRobotoFont(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      content: const Text(
        'You have unsaved changes. Do you want to save your changes before exiting?',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context)
              ..pop()
              ..pop();
          },
          child: const Text('Discard'),
        ),
        TextButton.icon(
          onPressed: () {
            onSave();
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.save),
          label: const Text('Save'),
        ),
      ],
    );
  }
}
