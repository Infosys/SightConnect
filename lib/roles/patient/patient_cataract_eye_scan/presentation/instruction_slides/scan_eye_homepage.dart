import 'dart:developer';

import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../data/models/User_details_model.dart';
import '../../data/models/enums/eye.dart';
import '../../data/models/slide_show_model.dart';
import '../eye_capture/detect_camera.dart';

class InstructionSlides extends ConsumerStatefulWidget {
  const InstructionSlides({Key? key, this.userDetails}) : super(key: key);
  final UserDetails? userDetails;
  static const String routeName = "/instructuions";

  @override
  ConsumerState<InstructionSlides> createState() => _InstructionSlidesState();
}

class _InstructionSlidesState extends ConsumerState<InstructionSlides> {
  @override
  void initState() {
    super.initState();
  }

  int counterForSlideShow = 0;
  List<SlideShowModel> slideShowData = [
    SlideShowModel(
      "assets/images/clippy_one.png",
      "Hold the camera placing the face properly on the frame.",
    ),
    SlideShowModel(
      "assets/images/clippy_two.png",
      "Take an image of the eyes using the back camera of your phone.",
    ),
    SlideShowModel(
      "assets/images/clippy_three.png",
      "Make sure to be in a well-lit area with the flash on.",
    ),
    SlideShowModel(
      "assets/images/clippy_four.png",
      "For better capture and clarity, have someone else to click the picture.",
    ),
    SlideShowModel(
      "assets/images/clippy_five.png",
      "Cover one eye with your hand and look straight ahead with the other eye while taking the picture.",
    ),
    SlideShowModel(
      "assets/images/clippy_six.png",
      "Centre the eye inside the panel before starting the picture.",
    ),
    SlideShowModel(
      "assets/images/clippy_seven.png",
      "Keep the eyes wide open till the flash goes off, until a ‘beep’ sound signals the end of the Photo.",
    )
  ];

  onIncrement() {
    if (counterForSlideShow < 6) {
      setState(() {
        counterForSlideShow = counterForSlideShow + 1;
      });
    }
  }

  onDecrement() {
    if (counterForSlideShow > 0) {
      setState(() {
        counterForSlideShow = counterForSlideShow - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 66.0, horizontal: 24),
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(slideShowData[counterForSlideShow].image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black38,
                    ),
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        slideShowData[counterForSlideShow].title,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontStyle: GoogleFonts.roboto().fontStyle),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.pause),
                    LinearPercentIndicator(
                      width: 180.0,
                      lineHeight: 6.0,
                      percent: (counterForSlideShow + 1) / 7,
                      barRadius: Radius.circular(12),
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.blue,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onDecrement();
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 2,
                              color: counterForSlideShow == 0
                                  ? Colors.grey
                                  : Colors.blue)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: counterForSlideShow == 0
                            ? Colors.grey
                            : Colors.blue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onIncrement();
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: 2,
                              color: counterForSlideShow == 6
                                  ? Colors.grey
                                  : Colors.blue)),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: counterForSlideShow == 6
                            ? Colors.grey
                            : Colors.blue,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          TextButton(
              style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Color(0xff296DF6),
                  ),
                  backgroundColor: counterForSlideShow == 6
                      ? Color(0xff296DF6)
                      : Colors.white),
              onPressed: () {
                log(ref.watch(patientEyeScanProvider).userDetails.toString());
                // log("test triggered");
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetectCamera(
                    eye: Eye.RIGHT_EYE,
                    userDetails: ref.watch(patientEyeScanProvider).userDetails!,
                  );
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      counterForSlideShow == 6
                          ? "Proceed to Scan"
                          : "Skip & Proceed to Scan",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: counterForSlideShow == 6
                                ? Colors.white
                                : Color(0xff296DF6),
                          )),
                ],
              ))
        ],
      ),
    );
  }
}
