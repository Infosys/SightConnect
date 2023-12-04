import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'observation_set_model.freezed.dart';
part 'observation_set_model.g.dart';

@freezed
class ObservationSetModel with _$ObservationSetModel{
  const factory ObservationSetModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
  }) = _ObservationSetModel;

  factory ObservationSetModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetModelFromJson(json); 
}