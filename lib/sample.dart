import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MiniAppDisplayPage(
                  miniapp: MiniApp(
                    id: "1",
                    version: "1",
                    name: "MiniApp",
                    displayName: "MiniApp",
                    sourceurl: "assets/miniapp/miniapp.zip",
                  ),
                ),
              ),
            );
          },
          child: const Text("Load"),
        ),
      ),
    );
  }
}
