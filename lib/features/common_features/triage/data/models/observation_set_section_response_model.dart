import 'package:eye_care_for_all/features/common_features/triage/data/models/observation_set_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/observation_set_section_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'observation_set_section_response_model.freezed.dart';
part 'observation_set_section_response_model.g.dart';

@freezed
class ObservationSetSectionResponseModel with _$ObservationSetSectionResponseModel{
  const factory ObservationSetSectionResponseModel({
    int? id,
    int? index,
    String? description,
    List<ObservationSetResponseModel>? observationSetResponseDTOList,
    ObservationSetSectionModel? supersection,
  }) = _ObservationSetSectionResponseModel;

  factory ObservationSetSectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetSectionResponseModelFromJson(json); 
}