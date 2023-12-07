// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var preliminaryAssessmentProvider =
    ChangeNotifierProvider<PreliminaryAssessmentNotifier>(
        (ref) => PreliminaryAssessmentNotifier());

class PreliminaryAssessmentNotifier extends ChangeNotifier {
  var eyeIssueType = [
    {"type": "Loss of Vision", "checked": true},
    {"type": "Power Problem", "checked": true},
    {"type": "Neurological Problem", "checked": true},
    {"type": "Allergy", "checked": false},
    {"type": "No Eye Problem", "checked": true},
  ];

  var eyeSpecialistDeals = [
    {"type": "Emergency consultation", "checked": true},
    {"type": "Urgent consultation", "checked": true},
    {"type": "Regular consultation", "checked": true},
    {"type": "Early consultation", "checked": false},
    {"type": "Corneal disorder", "checked": true},
    {"type": "Regular consultation", "checked": true},
    {"type": "Squint disorder", "checked": true},
    {"type": "Neurophthalmology", "checked": true},
    {"type": "Conditions of eyelids", "checked": true},
    {"type": "Conditions of retina", "checked": true},
    {"type": "Cornea and Anterior segment", "checked": true},
    {"type": "General ophthalmology", "checked": true},
    {"type": "Eye plasty", "checked": true},
    {"type": "Oculoplasty", "checked": true},
    {"type": "Children", "checked": true},
  ];

  var eyeSightProblem = [
    {"type": "Colored halos", "checked": true},
    {"type": "Curtain-like appearances", "checked": true},
    {"type": "Double vision", "checked": true},
    {"type": "Difficulty looking at light", "checked": false},
    {"type": "Waviness of vision", "checked": true},
    {"type": "Flashes of light", "checked": true},
    {"type": "Floaters", "checked": true},
    {"type": "Loss of field of vision", "checked": false}
  ];

  var eyeRelatedProblem = [
    {"type": "Watering of eyes", "checked": true},
    {"type": "Redness of eyes", "checked": true},
    {"type": "Sticky discharge in eyes", "checked": true},
    {"type": "White spots in black part of the eye", "checked": false},
    {"type": "Itching burning or pain in eyes", "checked": true},
    {"type": "Twitching of eyes", "checked": true},
    {"type": "Foreign body in eyes", "checked": true},
    {"type": "Frequent blinking of eyes", "checked": false},
    {"type": "Deviation of eyes", "checked": true},
    {"type": "Squeezing of eyes", "checked": false},
    {"type": "Drooping  of eyes", "checked": true},
    {"type": "Bulging of eyes", "checked": false},
    {"type": "Difference in sizes of eyes", "checked": false}
  ];

  var recommendationController = TextEditingController();
  var eyeRelatedProblemotherController = TextEditingController();
  var eyeSightProblemotherController = TextEditingController();
  var remarksController=TextEditingController();

  var visonCenters = [
    {
      "type": "LVPEI Eye Institute - Chudi Bazaar",
      "checked": true,
      "completeAddress":
          "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Chudi Bazaar,Hyderabad,Telegana 500012",
      "phoneno": "99634 78759",
      "time": "Monday - Friday, 10:00 AM to 5:00 PM"
    },
    {
      "type": "LVPEI Eye Institute - Gachibowli",
      "checked": false,
      "completeAddress":
          "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Gachibowli,Hyderabad,Telegana 500012",
      "phoneno": "99634 78759",
      "time": "Monday - Friday, 10:00 AM to 5:00 PM"
    },
    {
      "type": "LVPEI Eye Institute - Kala Pahar",
      "checked": false,
      "completeAddress":
          "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Kala Pahar,Hyderabad,Telegana 500012",
      "phoneno": "99634 78759",
      "time": "Monday - Friday, 10:00 AM to 5:00 PM"
    },
    {
      "type": "LVPEI Eye Institute - Gachibowli",
      "checked": false,
      "completeAddress":
          "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Gachibowli Bazaar,Hyderabad,Telegana 500012",
      "phoneno": "99634 78759",
      "time": "Monday - Friday, 10:00 AM to 5:00 PM"
    },
    {
      "type": "LVPEI Eye Institute - Kala Pahar",
      "checked": false,
      "completeAddress":
          "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar, Kala Pahar Bazaar,Hyderabad,Telegana 500012",
      "phoneno": "99634 78759",
      "time": "Monday - Friday, 10:00 AM to 5:00 PM"
    },
  ];

  void toogleFilterBoxes(value, index) {
    if (value == "eyeIssueType") {
      eyeIssueType[index]["checked"] =
          !(eyeIssueType[index]["checked"] as bool);
    } else if (value == "eyeSpecialistDeals")
      eyeSpecialistDeals[index]["checked"] =
          !(eyeSpecialistDeals[index]["checked"] as bool);
    else if (value == "eyeSightProblem") {
      eyeSightProblem[index]["checked"] =
          !(eyeSightProblem[index]["checked"] as bool);
    } else
      eyeRelatedProblem[index]["checked"] =
          !(eyeRelatedProblem[index]["checked"] as bool);

    notifyListeners();
  }

  void toogleVisionCenters(index) {
    for (var element in visonCenters) {
      element["checked"] = false;
    }
    visonCenters[index]["checked"] = true;
    notifyListeners();
  }
}
