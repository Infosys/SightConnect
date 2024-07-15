// To parse this JSON data, do
//
//     final performerModel = performerModelFromJson(jsonString);

import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'performer_model.freezed.dart';
part 'performer_model.g.dart';

PerformerModel performerModelFromJson(String str) => PerformerModel.fromJson(json.decode(str));

String performerModelToJson(PerformerModel data) => json.encode(data.toJson());

@freezed
class PerformerModel with _$PerformerModel {
    const factory PerformerModel({
        int? id,
        int? userId,
        String? userType,
        DateTime? startDate,
        DateTime? endDate,
        String? status,
        PatientModel? profile,
    }) = _PerformerModel;

    factory PerformerModel.fromJson(Map<String, dynamic> json) => _$PerformerModelFromJson(json);
}
