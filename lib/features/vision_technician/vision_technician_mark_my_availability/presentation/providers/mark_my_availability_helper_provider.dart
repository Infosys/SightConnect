import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/models/mark_my_availability_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';

var markMyAvailabilityHelperProvider =
    ChangeNotifierProvider<MarkMyAvailabilityHelperNotifier>(
        (ref) => MarkMyAvailabilityHelperNotifier());

class MarkMyAvailabilityHelperNotifier extends ChangeNotifier {
    String markMyAvailabilityDataRange = "12 Nov - 30 Nov 2023";
  var markMyAvailabilityList = [
    MarkMyAvailabilityModel(
        day: "Monday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true,),
    MarkMyAvailabilityModel(
        day: "Tuesday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
    MarkMyAvailabilityModel(
        day: "Wednesday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
    MarkMyAvailabilityModel(
        day: "Thursday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
    MarkMyAvailabilityModel(
        day: "Friday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
    MarkMyAvailabilityModel(
        day: "Saturday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
    MarkMyAvailabilityModel(
        day: "Sunday",
        time: [
          ["9:00 AM", "10:00 AM", "1"]
        ],
        checked: true),
  ];

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController startDateController = TextEditingController();

  var remarksController = TextEditingController();
  bool markmyAvailableStatus=true;
  void removeDayAvailability(int dayAvailabilityindex, int index) {

    (markMyAvailabilityList[dayAvailabilityindex].time).removeAt(index);
    notifyListeners();
  }

  void addDayAvailability(int dayAvailabilityindex) {
    (markMyAvailabilityList[dayAvailabilityindex].time)
        .add(["9:00 AM", "10:00 AM", "1"]);
    notifyListeners();
  }

  void toogleDay(dayAvailabilityindex) {
    markMyAvailabilityList[dayAvailabilityindex].checked =
        !(markMyAvailabilityList[dayAvailabilityindex].checked);
    notifyListeners();
  }

  void updatedropdown(dayAvailabilityindex, index, value, dropDownNo) {
    markMyAvailabilityList[dayAvailabilityindex].time[index][dropDownNo] =
        value;

    var time1 = (markMyAvailabilityList[dayAvailabilityindex].time)[index][0];
    var time2 = (markMyAvailabilityList[dayAvailabilityindex].time)[index][1];

    var format = DateFormat('h:mm a');
    var startTimeDropDown = format.parse(time1);
    var endTimeDropDown = format.parse(time2);

    var difference = endTimeDropDown.difference(startTimeDropDown);
    var differenceInHours = difference.inHours;



    (markMyAvailabilityList[dayAvailabilityindex].time)[index][2] =
     differenceInHours.toString()+":"+difference.inMinutes.remainder(60).toString();

    notifyListeners();
  }

  void toggleMarkMyAvailableStatus(value)
  {
    markmyAvailableStatus=value;
    notifyListeners();
  }

}
