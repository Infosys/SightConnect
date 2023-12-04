import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/observation_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'observation_set_response_model.freezed.dart';
part 'observation_set_response_model.g.dart';

@freezed
class ObservationSetResponseModel with _$ObservationSetResponseModel{
  const factory ObservationSetResponseModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
    ObservationResponseModel? observationResponseDTO,
    List<ObservationResponseModel>? observationResponseDTOList,
  }) = _ObservationSetResponseModel;

  factory ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetResponseModelFromJson(json); 
}