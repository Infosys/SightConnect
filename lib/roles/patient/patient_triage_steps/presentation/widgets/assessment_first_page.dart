import 'package:flutter/material.dart';

class AssessmentFirstPage extends StatelessWidget {
  const AssessmentFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text("Step 1 of 3"),
              ),
            ]),
      ),
    );
  }
}
