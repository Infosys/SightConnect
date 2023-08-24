import 'package:flutter/material.dart';

class TumblingTest extends StatelessWidget {
  static const String routeName = '/tumbling-test';
  const TumblingTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tumbling Test'),
      ),
      body: PageView(
        children: const [],
      ),
    );
  }
}
