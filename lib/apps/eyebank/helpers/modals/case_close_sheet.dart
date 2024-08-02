import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CaseCloseSheet extends StatefulWidget {
  const CaseCloseSheet({super.key});

  @override
  _CaseCloseSheetState createState() => _CaseCloseSheetState();
}

class _CaseCloseSheetState extends State<CaseCloseSheet> {
  final TextEditingController _reasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Close Case',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Are you sure you want to close this case?',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _reasonController,
            decoration: const InputDecoration(
              labelText: 'Reason for closing the case',
              border: OutlineInputBorder(),
            ),
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: () {
                  final reason = _reasonController.text;
                  if (reason.isNotEmpty) {
                    Navigator.of(context).pop();
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Please provide a reason for closing the case');
                  }
                },
                child: const Text('Confirm'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
