import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../widgets/tumbling_bottom_input_tab.dart';
import '../widgets/tumbling_top_reading_card.dart';
import '../widgets/tumbling_overlay.dart';

class TumblingTestInitiatePage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-initiate";
  const TumblingTestInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var pointerState = ref.watch(tumblingTestDialogProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Visual Acuity Test')),
      body: TumblingOverlay(
        child: IgnorePointer(
          ignoring: pointerState,
          child: const Padding(
            padding: EdgeInsets.all(AppSize.klpadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TumblingTopReadingCard(),
                Expanded(
                  child: TumblingBottomInputTab(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
