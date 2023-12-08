class IvrCallHistoryModel
{
  String patientId;
  String name;
  String duration;
  String day;
  String time;
  String status;
  String calltype;

  IvrCallHistoryModel({
    required this.patientId,
    required this.name,
    required this.duration,
    required this.day,
    required this.time,
    required this.status,
    required this.calltype,
  });

  @override
  String toString() {
    // TODO: implement toString
    return 'IvrCallHistoryModel(patientId: $patientId, name: $name, duration: $duration, day: $day, time: $time, status: $status, calltype: $calltype)';
  }


  
}