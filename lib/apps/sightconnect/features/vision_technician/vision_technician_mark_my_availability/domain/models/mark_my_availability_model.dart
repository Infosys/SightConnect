/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

class MarkMyAvailabilityModel
{

  String day;
  List<List<String>> time;
  bool checked;

  MarkMyAvailabilityModel({required this.day,required this.time,required this.checked});
  @override
  String toString() {
    return "day: $day, time: $time, checked: $checked,";
  }

}