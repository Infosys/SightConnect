import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

var markMyAvailabilityProvider =
    ChangeNotifierProvider<MarkMyAvailabilityNotifier>(
        (ref) => MarkMyAvailabilityNotifier());

class MarkMyAvailabilityNotifier extends ChangeNotifier {
  var markMyAvailabilityList = [
    {
      "day": "Monday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Tuesday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Wednessday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Thursday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Friday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Saturday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
    {
      "day": "Sunday",
      "time": [
        ["9:00 AM", "10:00 AM", "4"]
      ],
      "checked": true
    },
  ];

  void removeDayAvailability(int dayAvailabilityindex, int index) {
    print("object remove");
    print(markMyAvailabilityList[dayAvailabilityindex]["time"]);
    (markMyAvailabilityList[dayAvailabilityindex]["time"] as List)
        .removeAt(index);
    notifyListeners();
  }

  void addDayAvailability(int dayAvailabilityindex) {
    (markMyAvailabilityList[dayAvailabilityindex]["time"] as List)
        .add(["9:00 AM", "10:00 AM", "4 hrs"]);
    notifyListeners();
  }

  void toogleDay(dayAvailabilityindex) {
    markMyAvailabilityList[dayAvailabilityindex]["checked"] =
        !(markMyAvailabilityList[dayAvailabilityindex]["checked"] as bool);
    notifyListeners();
  }

  void updatedropdown(dayAvailabilityindex, index, value, dropDownNo) {
    (markMyAvailabilityList[dayAvailabilityindex]["time"] as List)[index]
        [dropDownNo] = value;

    var time1 = (markMyAvailabilityList[dayAvailabilityindex]["time"]
        as List)[index][0];
    var time2 = (markMyAvailabilityList[dayAvailabilityindex]["time"]
        as List)[index][1];

    var format = DateFormat('h:mm a');
    var startTimeDropDown = format.parse(time1);
    var endTimeDropDown = format.parse(time2);

    var difference = endTimeDropDown.difference(startTimeDropDown);
    var differenceInHours = difference.inHours;

    (markMyAvailabilityList[dayAvailabilityindex]["time"] as List)[index][2] =
        differenceInHours.toString();

    print(markMyAvailabilityList[dayAvailabilityindex]);

    notifyListeners();
  }
}
