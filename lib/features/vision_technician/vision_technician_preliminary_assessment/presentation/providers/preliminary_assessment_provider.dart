// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/preliminary_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/vision_center_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var preliminaryAssessmentProvider =
    ChangeNotifierProvider<PreliminaryAssessmentNotifier>(
        (ref) => PreliminaryAssessmentNotifier());

class PreliminaryAssessmentNotifier extends ChangeNotifier {
  var eyeIssueType = [
    PreliminaryAssessmentModel(
        type: "Loss of Vision", checked: true, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Power Problem", checked: true, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Neurological Problem", checked: true, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Allergy", checked: false, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "No Eye Problem", checked: true, name: "Eye Issue Type"),
  ];

  var eyeSpecialistDeals = [
    PreliminaryAssessmentModel(
        type: "Emergency consultation",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Urgent consultation",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Regular consultation",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Early consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Corneal disorder", checked: true, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Regular consultation",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Squint disorder", checked: true, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Neurophthalmology", checked: true, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Conditions of eyelids",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Conditions of retina",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Cornea and Anterior segment",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "General ophthalmology",
        checked: true,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Eye plasty", checked: true, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Oculoplasty", checked: true, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Children", checked: true, name: "Eye Specialist Deals"),
  ];

  var eyeSightProblem = [
    PreliminaryAssessmentModel(
        type: "Colored halos", checked: true, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Curtain-like appearances",
        checked: true,
        name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Double vision", checked: true, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Difficulty looking at light",
        checked: false,
        name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Waviness of vision", checked: true, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Flashes of light", checked: true, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Floaters", checked: true, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Loss of field of vision",
        checked: false,
        name: "Eye Sight Problem")
  ];

  var eyeRelatedProblem = [
    PreliminaryAssessmentModel(
        type: "Watering of eyes", checked: true, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Redness of eyes", checked: true, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Sticky discharge in eyes",
        checked: true,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "White spots in black part of the eye",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Itching burning or pain in eyes",
        checked: true,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Twitching of eyes", checked: true, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Foreign body in eyes",
        checked: true,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Frequent blinking of eyes",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Deviation of eyes", checked: true, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Squeezing of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Drooping  of eyes", checked: true, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Bulging of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Difference in sizes of eyes",
        checked: false,
        name: "Eye Related Problem")
  ];

  var recommendationController = TextEditingController();
  var eyeRelatedProblemotherController = TextEditingController();
  var eyeSightProblemotherController = TextEditingController();
  var remarksController = TextEditingController();

  var visionCenters = [
    VisionCenterModel(
        type: "LVPEI Eye Institute - Chudi Bazaar",
        checked: true,
        completeAddress:
            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Chudi Bazaar,Hyderabad,Telegana 500012",
        phoneno: "99634 78759",
        time: "Monday - Friday, 10:00 AM to 5:00 PM"),
    VisionCenterModel(
        type: "LVPEI Eye Institute - Gachibowli",
        checked: false,
        completeAddress:
            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Gachibowli,Hyderabad,Telegana 500012",
        phoneno: "99634 78759",
        time: "Monday - Friday, 10:00 AM to 5:00 PM"),
    VisionCenterModel(
        type: "LVPEI Eye Institute - Kala Pahar",
        checked: false,
        completeAddress:
            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Kala Pahar,Hyderabad,Telegana 500012",
        phoneno: "99634 78759",
        time: "Monday - Friday, 10:00 AM to 5:00 PM"),
    VisionCenterModel(
        type: "LVPEI Eye Institute - Gachibowli",
        checked: false,
        completeAddress:
            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar,Gachibowli Bazaar,Hyderabad,Telegana 500012",
        phoneno: "99634 78759",
        time: "Monday - Friday, 10:00 AM to 5:00 PM"),
    VisionCenterModel(
        type: "LVPEI Eye Institute - Kala Pahar",
        checked: false,
        completeAddress:
            "14,Nagar Khana Hanuman Temple Road,Begum Bazar Chatri,Gowsala Nagar, Kala Pahar Bazaar,Hyderabad,Telegana 500012",
        phoneno: "99634 78759",
        time: "Monday - Friday, 10:00 AM to 5:00 PM"),
  ];

  void toogleFilterBoxes(value, index) {
    if (value == "eyeIssueType") {
      eyeIssueType[index].checked = !(eyeIssueType[index].checked);
    } else if (value == "eyeSpecialistDeals")
      eyeSpecialistDeals[index].checked = !(eyeSpecialistDeals[index].checked);
    else if (value == "eyeSightProblem") {
      eyeSightProblem[index].checked = !(eyeSightProblem[index].checked);
    } else
      eyeRelatedProblem[index].checked = !(eyeRelatedProblem[index].checked);

    notifyListeners();
  }

  void toogleVisionCenters(index) {
    for (VisionCenterModel element in visionCenters) {
      element.checked = false;
    }
    visionCenters[index].checked = true;
    notifyListeners();
  }
}
