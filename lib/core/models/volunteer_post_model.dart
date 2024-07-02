// To parse this JSON data, do
//
//     final volunteerPostModel = volunteerPostModelFromJson(jsonString);

import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'volunteer_post_model.freezed.dart';
part 'volunteer_post_model.g.dart';

VolunteerPostModel volunteerPostModelFromJson(String str) => VolunteerPostModel.fromJson(json.decode(str));

String volunteerPostModelToJson(VolunteerPostModel data) => json.encode(data.toJson());

@freezed
class VolunteerPostModel with _$VolunteerPostModel {
    const factory VolunteerPostModel({
        int? id,
        int? userId,
        String? userType,
        DateTime? startDate,
        DateTime? endDate,
        String? status,
        PatientModel? profile,
    }) = _VolunteerPostModel;

    factory VolunteerPostModel.fromJson(Map<String, dynamic> json) => _$VolunteerPostModelFromJson(json);
}
