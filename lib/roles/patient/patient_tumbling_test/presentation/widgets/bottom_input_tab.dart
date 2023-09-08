import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/voice_assist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../shared/theme/text_theme.dart';

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
          const SizedBox(height: AppSize.kmheight),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    "Distance:",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.kGrey,
                    ),
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Text(
                    "40 cm",
                    style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColor.kGreen),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "Left Eye",
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: const <Widget>[SwipeGestureCard(), VoiceAssistCard()],
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
