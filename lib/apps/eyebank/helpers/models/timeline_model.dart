import 'package:eye_care_for_all/apps/eyebank/helpers/contracts/eb_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'timeline_model.freezed.dart';
part 'timeline_model.g.dart';

@freezed
class TimelineModel with _$TimelineModel {
    const factory TimelineModel({
        AssessmentName? assessmentName,
        String? assessmentVersion,
        List<Datum>? data,
    }) = _TimelineModel;

    factory TimelineModel.fromJson(Map<String, dynamic> json) => _$TimelineModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        String? title,
        DateTime? initiateDate,
        DateTime? recentUpdated,
        EncounterStatus? status,
        int? serviceRequestId,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
