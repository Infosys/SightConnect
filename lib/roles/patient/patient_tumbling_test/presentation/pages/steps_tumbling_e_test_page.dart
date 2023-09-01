import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// code cleanup needed

class InstructionSlides extends StatefulWidget {
  const InstructionSlides({Key? key}) : super(key: key);

  static const String routeName = "/instructuions";

  @override
  State<InstructionSlides> createState() => _InstructionSlidesState();
}

class _InstructionSlidesState extends State<InstructionSlides> {
  int counterForSlideShow = 0;
  bool proceedToTest = false;
  String appbarTitle = "Steps to do the retinal scanning";
  List<SlideShowModel> slideShowData = [
    SlideShowModel(
      "assets/images/step1.png",
      "Sit down comfortably in a well light location. You may feel a sudden change in brightness, don’t worry the screen is set to auto-brightness to provide optimal result.",
    ),
    SlideShowModel(
      "assets/images/step2.png",
      "Make sure you are holding the device at the eye level. If you wear glasses or contact lenses, keep them on",
    ),
    SlideShowModel(
      "assets/images/step3.png",
      "Position yourself 40 cm from the screen. Distance will be shown in the test screen.",
    ),
    SlideShowModel(
      "assets/images/step4.png",
      "If you are testing with glasses on, cover one eye with your hand over the glasses when only one eye is tested.",
    ),
    SlideShowModel(
      "assets/images/Test1LeftEye.png",
      "Sit down comfortably in a well light location. You may feel a sudden change in brightness, don’t worry the screen is set to auto-brightness to provide optimal result.",
    )
  ];

  onIncrement() {
    if (counterForSlideShow < 3) {
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
    return Scaffold(
        backgroundColor: const Color(0xffF7FAFF),
        appBar: CustomAppBar(
          title: appbarTitle,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (proceedToTest == true) ...[
                Text(
                  "Test 1 - Left Eye",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Without pressing on the eyelid, cover the RIGHT EYE with your hand. If you are wearing glasses place your hand over the glass.",
                  style: TextStyle(fontSize: 15),
                )
              ],
              if (proceedToTest == false) ...[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 66.0, horizontal: 24),
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              slideShowData[counterForSlideShow].image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                slideShowData[counterForSlideShow].title,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontStyle: GoogleFonts.roboto().fontStyle),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
              if (proceedToTest == true) ...[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 78, right: 78, bottom: 180, top: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        slideShowData[counterForSlideShow].image,
                        height: 408,
                        width: 256,
                      ),
                    ),
                  ),
                )
              ],
              if (proceedToTest == false) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.pause),
                          LinearPercentIndicator(
                            width: 180.0,
                            lineHeight: 6.0,
                            percent: (counterForSlideShow + 1) / 4,
                            barRadius: const Radius.circular(12),
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
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
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
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    width: 2,
                                    color: counterForSlideShow == 3
                                        ? Colors.grey
                                        : Colors.blue)),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: counterForSlideShow == 3
                                  ? Colors.grey
                                  : Colors.blue,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
              SizedBox(
                width: 400,
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        side: const BorderSide(
                          color: Color(0xff296DF6),
                        ),
                        backgroundColor: counterForSlideShow < 3
                            ? Colors.white
                            : const Color(0xff296DF6)),
                    onPressed: () {
                      //Navigate to tumbling test page
                      if (counterForSlideShow == 4) {
                        Navigator.pushNamed(context, '/tumbling-test-initiate');
                      }
                      if (counterForSlideShow == 3) {
                        setState(() {
                          appbarTitle = "Tumbling E Test";
                          proceedToTest = true;
                          counterForSlideShow = 4;
                        });
                      }
                    },
                    child: Text(
                        counterForSlideShow == 3
                            ? "Proceed to Test"
                            : counterForSlideShow == 4
                                ? "Continue"
                                : "Skip",
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: (counterForSlideShow == 3 ||
                                          counterForSlideShow == 4)
                                      ? Colors.white
                                      : const Color(0xff296DF6),
                                ))),
              )
            ],
          ),
        ));
  }
}

class SlideShowModel {
  String image;
  String title;
  SlideShowModel(this.image, this.title);
}
