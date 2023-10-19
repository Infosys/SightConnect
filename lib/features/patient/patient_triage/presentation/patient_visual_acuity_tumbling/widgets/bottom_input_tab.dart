import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/theme/text_theme.dart';
import '../../../data/enums/tumbling_enums.dart';
import '../providers/patient_visual_acuity_test_provider.dart';
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
          Row(
            children: [
              Row(
                children: [
                  Text(
                    "Distance:",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.grey,
                    ),
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Text(
                    "40 cms",
                    style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColor.green),
                  ),
                ],
              ),
              const Spacer(),
              Consumer(
                builder: (context, ref, child) => Text(
                  ref.watch(tumblingTestProvider).currentEye == Eye.left
                      ? "Left Eye"
                      : "Right Eye",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: <Widget>[const SwipeGestureCard(), VoiceAssistCard()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ButtomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
            _controller!.index = _index ?? 0;
          });
        },
        currentIndex: _index ?? 0,
      ),
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
      segments: const [
        ButtonSegment(
          value: 0,
          icon: Icon(Icons.touch_app),
          label: Text("Swipe Gesture"),
        ),
        ButtonSegment(
          value: 1,
          icon: Icon(Icons.mic),
          label: Text("Voice Assist"),
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
