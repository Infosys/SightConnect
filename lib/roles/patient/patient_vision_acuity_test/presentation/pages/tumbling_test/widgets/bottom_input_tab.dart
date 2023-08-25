import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/widgets/voice_assist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: <Widget>[SwipeGestureCard(), const VoiceAssistCard()],
        ),
        bottomNavigationBar: ButtomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
              _controller!.index = _index ?? 0;
            });
          },
          currentIndex: _index ?? 0,
        ));
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
    List<IconData> icons = [Icons.swipe, Icons.mic];
    List<String> buttonStrings = ["Swipe Gesture", "Voice Assist"];
    List<Flexible> generateIcons() {
      return List.generate(
        2,
        (index) {
          return Flexible(
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                onTap(index);
              },
              child: Container(
                color:
                    index == currentIndex ? AppColor.kPrimary : AppColor.kWhite,
                padding: const EdgeInsets.all(AppSize.kmpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icons[index],
                      color: index == currentIndex
                          ? AppColor.kWhite
                          : AppColor.kPrimary,
                    ),
                    const SizedBox(
                      width: AppSize.kswidth,
                    ),
                    Text(
                      buttonStrings[index],
                      style: TextStyle(
                        color: index == currentIndex
                            ? AppColor.kWhite
                            : AppColor.kPrimary,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.width * 0.05,
        vertical: AppSize.height * 0.02,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.klradius * 8),
        child: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(AppSize.klradius * 8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: generateIcons(),
          ),
        ),
      ),
    );
  }
}
