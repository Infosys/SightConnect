import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MiniAppGridView();
  }
}
