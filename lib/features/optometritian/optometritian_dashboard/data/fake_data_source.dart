var fakePatients = [
  PatientModel(
    id: "PID 12345670",
    education: "No Education",
    employment: "Unemployed/Home duties",
    date: DateTime.now(),
  ),
  PatientModel(
    id: "PID 12345671",
    education: "High School",
    employment: "Skilled labour",
    date: DateTime.now().subtract(const Duration(days: 7)),
  ),
  PatientModel(
    id: "PID 12345672",
    education: "Advanced Studies",
    employment: "Skilled labour",
    date: DateTime.now().subtract(const Duration(days: 7)),
  ),
  PatientModel(
    id: "PID 12345673",
    education: "High School",
    employment: "Skilled labour",
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  PatientModel(
    id: "PID 12345674",
    education: "Advanced Studies",
    employment: "Skilled labour",
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  PatientModel(
      id: "PID 12345675",
      education: "High School",
      employment: "Skilled labour",
      date: DateTime.now().subtract(const Duration(days: 1))),
  PatientModel(
      id: "PID 12345676",
      education: "Advanced Studies",
      employment: "Skilled labour",
      date: DateTime.now().subtract(const Duration(days: 1))),
];

class PatientModel {
  String? id;
  String? education;
  String? employment;
  DateTime? date;

  PatientModel({
    this.id,
    this.education,
    this.employment,
    this.date,
  });
}

enum Status { complete, pending }

enum TimeFrame { today, thisWeek, thisMonth, thisYear }
