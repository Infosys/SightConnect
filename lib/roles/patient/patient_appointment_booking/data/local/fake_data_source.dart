List<AppointmentFullDateModel> fullDateAppointment = [
  AppointmentFullDateModel(
      time: "8:00",
      timeZone: "AM",
      startTime: "8:00 AM ",
      endTime: "8:15 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "8:15",
      timeZone: "AM",
      startTime: "8:15 AM ",
      endTime: "8:30 AM",
      isScheduled: false),
  AppointmentFullDateModel(
      time: "8:30",
      timeZone: "AM",
      startTime: "8:30 AM ",
      endTime: "8:45 AM",
      isScheduled: false),
  AppointmentFullDateModel(
      time: "8:45",
      timeZone: "AM",
      startTime: "8:45 AM ",
      endTime: "9:00 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "9:00",
      timeZone: "AM",
      startTime: "9:00 AM ",
      endTime: "9:15 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "9:15",
      timeZone: "AM",
      startTime: "9:15 AM ",
      endTime: "9:30 AM",
      isScheduled: false),
  AppointmentFullDateModel(
      time: "9:45",
      timeZone: "AM",
      startTime: "9:45 AM ",
      endTime: "10:00 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "10:00",
      timeZone: "AM",
      startTime: "10:00 AM ",
      endTime: "10:15 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "12:00",
      timeZone: "AM",
      startTime: "10:15 AM ",
      endTime: "10:30 AM",
      isScheduled: true,
      isBreak: true),
  AppointmentFullDateModel(
      time: "4:00",
      timeZone: "PM",
      startTime: "4:00 AM ",
      endTime: "4:15 AM",
      isScheduled: true),
  AppointmentFullDateModel(
      time: "8:00",
      timeZone: "PM",
      startTime: "8:00 AM ",
      endTime: "8:15 AM",
      isScheduled: true)
];

class AppointmentFullDateModel {
  String? time;
  String? timeZone;
  String? startTime;
  String? endTime;
  bool? isScheduled;
  bool? isBreak;

  AppointmentFullDateModel(
      {this.time,
      this.timeZone,
      this.startTime,
      this.endTime,
      this.isScheduled,
      this.isBreak = false});
}
