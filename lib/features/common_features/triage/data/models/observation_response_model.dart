import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/value_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'observation_response_model.freezed.dart';
part 'observation_response_model.g.dart';

@freezed
class ObservationResponseModel with _$ObservationResponseModel{
  const factory ObservationResponseModel({
    int? id,
    String? name,
    ValueType? valueType,
    String? hiThreshold,
    String? loThreshold,
    @TimestampConverter() DateTime? creationDate,
    String? configs,
    double? weightage
  }) = _ObservationResponseModel;

  factory ObservationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationResponseModelFromJson(json); 
}