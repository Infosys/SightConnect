import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StepImage extends ConsumerWidget {
  const StepImage({super.key, required this.eye});
  final String eye;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Image.asset(
      "assets/images/vt_${eye}_eye.png",
      height: 32,
    );
  }
}
