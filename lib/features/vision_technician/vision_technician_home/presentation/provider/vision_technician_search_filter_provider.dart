import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final visionTechnicianSearchFilterProvider =
    ChangeNotifierProvider<VisionTechnicianSearchFilterNotifier>((ref) {
  return VisionTechnicianSearchFilterNotifier();
});

class VisionTechnicianSearchFilterNotifier extends ChangeNotifier {
  RangeValues currentRangeValues = const RangeValues(40, 80);
  var value=10;

  void update(value)
  {
    value=value;
    notifyListeners();
  }
  var gender = [
    {"type": "Male", "checked": true},
    {"type": "Female", "checked": true},
    {"type": "Others", "checked": true},
  ];
  var location = [
    {"type": "Hyderabad", "checked": true},
    {"type": "Warangal", "checked": true},
    {"type": "Nizamabad", "checked": true},
    {"type": "Nalgonda", "checked": true},
    {"type": "Khammam", "checked": true},
    {"type": "Karimnagar", "checked": true},
  ];
  var status = [
    {"type": "Early Consult", "checked": true},
    {"type": "Urgent Consult", "checked": true},
    {"type": "Routine Consult", "checked": true},
    {"type": "Follow Up", "checked": true},
    {"type": "Completed", "checked": true},
  ];

  void setRangeSliderValues(values) {
    currentRangeValues = values;
    notifyListeners();
  }

  void toggleFilterBoxes(name, index) {
    if (name == "Gender") {
      gender[index]["checked"] = !(gender[index]["checked"] as bool);
    } else if (name == "Location") {
      location[index]["checked"] = !(location[index]["checked"] as bool);
    } else {
      status[index]["checked"] = !(status[index]["checked"] as bool);
    }
    notifyListeners();
  }
}
