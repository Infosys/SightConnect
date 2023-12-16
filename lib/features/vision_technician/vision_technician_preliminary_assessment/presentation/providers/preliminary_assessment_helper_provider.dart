import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/preliminary_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/vision_center_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/vision_center_models.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../../domain/repositories/vt_vision_center_repository_impl.dart';

var preliminaryAssessmentHelperProvider =
    ChangeNotifierProvider<PreliminaryAssessmentHelperNotifier>(
        (ref) => PreliminaryAssessmentHelperNotifier(ref));

class PreliminaryAssessmentHelperNotifier extends ChangeNotifier {
  Ref ref;
  PreliminaryAssessmentHelperNotifier(this.ref);

  var eyeIssueType = [
    PreliminaryAssessmentModel(
        type: "Loss of Vision", checked: false, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Power Problem", checked: false, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Neurological Problem", checked: false, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "Allergy", checked: false, name: "Eye Issue Type"),
    PreliminaryAssessmentModel(
        type: "No Eye Problem", checked: false, name: "Eye Issue Type"),
  ];

  void details() {
    List<Map<String, dynamic>> list = [];

    for (var element in eyeIssueType) {
      if (element.checked == true) {
        list.add({
          element.type: element.checked,
        });
      }
    }
    logger.d("Issue type : $list");
  }

  var eyeSpecialistDeals = [
    PreliminaryAssessmentModel(
        type: "Emergency consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Urgent consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Regular consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Early consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Corneal disorder", checked: false, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Regular consultation",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Squint disorder", checked: false, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Neurophthalmology",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Conditions of eyelids",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Conditions of retina",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Cornea and Anterior segment",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "General ophthalmology",
        checked: false,
        name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Eye plasty", checked: false, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Oculoplasty", checked: false, name: "Eye Specialist Deals"),
    PreliminaryAssessmentModel(
        type: "Children", checked: false, name: "Eye Specialist Deals"),
  ];

  var eyeSightProblem = [
    PreliminaryAssessmentModel(
        type: "Colored halos", checked: false, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Curtain-like appearances",
        checked: false,
        name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Double vision", checked: false, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Difficulty looking at light",
        checked: false,
        name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Waviness of vision", checked: false, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Flashes of light", checked: false, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Floaters", checked: false, name: "Eye Sight Problem"),
    PreliminaryAssessmentModel(
        type: "Loss of field of vision",
        checked: false,
        name: "Eye Sight Problem")
  ];

  var eyeRelatedProblem = [
    PreliminaryAssessmentModel(
        type: "Watering of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Redness of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Sticky discharge in eyes",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "White spots in black part of the eye",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Itching burning or pain in eyes",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Twitching of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Foreign body in eyes",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Frequent blinking of eyes",
        checked: false,
        name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Deviation of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Squeezing of eyes", checked: false, name: "Eye Related Problem"),
    PreliminaryAssessmentModel(
        type: "Drooping  of eyes", checked: false, name: "Eye Related Problem"),
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
        checked: false,
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

  FacilityModel getCheckedVisionCenter(){
    var response = ref.read(vtVisionCenterViewModelProvider).facilityList;
    FacilityModel visionCenterModel = const FacilityModel(
      facilityInformation: FacilityInformationModel(
          facilityAddressDetails: FacilityAddressDetailsModel(
              addressLine1: "sad", addressLine2: "dddd"),
          facilityContactInformation: FacilityContactInformationModel(
            facilityContactNumber: "kk",
          ),
          timingsOfFacility: [FacilityTimingModel(workingDays: "Sunday")]),
    );
    for (FacilityModel element in response) {
      visionCenterModel = element;
    }
      return visionCenterModel;
      // VisionCenterModel visionCenter = VisionCenterModel(
      //     type: "", checked: false, completeAddress: "", phoneno: "", time: "");
      // for (int i = 0; i < visionCenters.length; i++) {
      //   if (visionCenters[i].checked == true) {
      //     visionCenter = visionCenters[i];
      //     break;
      //   }
      // }
      // return visionCenter;
    }
  }

