/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

//enums
enum Eye { LEFT_EYE, RIGHT_EYE, BOTH_EYES }
enum ScanType { Cataract, Keratoconus }

//classes
class PreviousReportsModel {
  String name;
  String date;
  String time;
  PreviousReportsModel(this.date, this.name, this.time);
}

class SlideShowModel {
  String image;
  String title;
  SlideShowModel(this.image, this.title);
}

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