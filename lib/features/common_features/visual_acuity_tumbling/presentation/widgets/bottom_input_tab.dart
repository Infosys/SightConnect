import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../shared/theme/text_theme.dart';
import '../providers/visual_acuity_test_provider.dart';
import 'swipe_gesture_card.dart';
import 'voice_assist_card.dart';

class BottomInputTab extends StatefulWidget {
  const BottomInputTab({super.key});

  @override
  State createState() => BottomInputTabState();
}

class BottomInputTabState extends State<BottomInputTab>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int? _index;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: <Widget>[const SwipeGestureCard(), VoiceAssistCard()],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: ButtomNavigationBar(
      //   onTap: (index) {
      //     setState(() {
      //       _index = index;
      //       _controller!.index = _index ?? 0;
      //     });
      //   },
      //   currentIndex: _index ?? 0,
      // ),
    );
  }
}

class ButtomNavigationBar extends HookWidget {
  const ButtomNavigationBar({
    required this.onTap,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  final Function(int) onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    var isSelected = useState<Set<int>>({currentIndex});

    return SegmentedButton(
      showSelectedIcon: false,
      segments: [
        ButtonSegment(
          value: 0,
          icon: const Icon(Icons.touch_app),
          label: Text(context.loc!.swipeGestureTab),
        ),
        ButtonSegment(
          value: 1,
          icon: const Icon(Icons.mic),
          label: Text(context.loc!.voiceAssistTab),
        ),
      ],
      onSelectionChanged: (value) {
        isSelected.value = value;
        onTap(value.first);
      },
      selected: isSelected.value,
    );
  }
}
