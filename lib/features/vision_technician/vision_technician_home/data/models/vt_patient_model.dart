import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/data/models/vt_eyecare_details_question_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vt_patient_model.freezed.dart';
part 'vt_patient_model.g.dart';

@freezed
class VTPatientDto with _$VTPatientDto {
  const factory VTPatientDto({
    int? id,
    String? name,
    String? mobile,
    String? yearOfBirth,
    String? monthOfBirth,
    String? dayOfBirth,
    Gender? gender,
    String? districtName,
    String? townName,
    String? pincode,
    int? encounterId,
    @TimestampConverter() DateTime? encounterStartDate,
    String? status,
    SeverityCategory? category,
  }) = _VTPatientDto;

  factory VTPatientDto.fromJson(Map<String, dynamic> json) =>
      _$VTPatientDtoFromJson(json);
}

class VTPatientModel {
  String firstName;
  String middleName;
  String lastName;
  String gender;
  String abhaId;
  String email;
  String age;
  String dateOfBirth;
  String patientId;
  String assessmentId;
  String assessmentDate;
  String status;
  String category;
  String mobileNo;
  bool closed;
  bool spectacles;
  bool cataractSurgery;
  bool eyeDrops;
  bool oralMedication;
  List<EyeCareDetailsQuestionModel> eyeCareDetailsQuestion;
  Address address;

  VTPatientModel({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.abhaId,
    required this.email,
    required this.age,
    required this.dateOfBirth,
    required this.patientId,
    required this.assessmentId,
    required this.assessmentDate,
    required this.status,
    required this.category,
    required this.mobileNo,
    required this.closed,
    required this.spectacles,
    required this.cataractSurgery,
    required this.eyeDrops,
    required this.oralMedication,
    required this.eyeCareDetailsQuestion,
    required this.address,
  });

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class Address {
  String doorNumber;
  String street;
  String district;
  String city;
  String state;
  String landmark;
  String pincode;

  Address({
    required this.doorNumber,
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    required this.landmark,
    required this.pincode,
  });
}
