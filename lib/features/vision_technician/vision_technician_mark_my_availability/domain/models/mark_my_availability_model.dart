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