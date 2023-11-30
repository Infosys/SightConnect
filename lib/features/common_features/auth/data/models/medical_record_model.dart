import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_record_model.freezed.dart';
part 'medical_record_model.g.dart';

@freezed
class MedicalRecordModel with _$MedicalRecordModel{
  const factory MedicalRecordModel({
    int? id,
    @TimestampConverter() DateTime? registrationDate,
    String? organisationId
    
  }) = _MedicalRecordModel;

  factory MedicalRecordModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalRecordModelFromJson(json); 
}