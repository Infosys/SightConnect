var fakePatients = [];

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
