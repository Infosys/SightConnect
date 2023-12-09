class VTPatientModel {
  String name;
  String patientId;
  String id;
  String date;
  String status;
  String category;
  String mobileNo;
  bool closed = false;
  bool spectacles = false;
  bool cataractSurgery = false;
  bool eyeDrops = false;
  bool oralMedication = false;

  VTPatientModel({
    required this.name,
    required this.patientId,
    required this.id,
    required this.date,
    required this.status,
    required this.category,
    required this.mobileNo,
  });
  
}
