import 'package:eye_care_for_all/features/common_features/triage/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/observation_set_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'observation_set_section_model.freezed.dart';
part 'observation_set_section_model.g.dart';

@freezed
class ObservationSetSectionModel with _$ObservationSetSectionModel{
  const factory ObservationSetSectionModel({
    int? id,
    int? index,
    String? description,
    ObservationSetModel? observationSet,
    AssessmentModel? assessment
  }) = _ObservationSetSectionModel;

  factory ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetSectionModelFromJson(json); 
}