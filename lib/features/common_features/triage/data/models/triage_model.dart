import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/srouce.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/incomplete_test_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/performer_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_imaging_selection_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_observations_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_question_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_model.freezed.dart';
part 'triage_model.g.dart';

@freezed
class TriageModel with _$TriageModel {
  const factory TriageModel({
    int? patientId,
    int? encounterId,
    String? serviceType,
    int? organizationCode,
    List<PerformerModel>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime? issued,
    @TimestampConverter() DateTime? userStartDate,
    Source? source,
    String? sourceVersion,
    List<IncompleteTestModel>? incompleteSection,
    List<PostImagingSelectionModel>? imagingSelection,
    List<PostObservationsModel>? observations,
    List<PostQuestionResponseModel>? questionResponse
  }) = _TriageModel;

  factory TriageModel.fromJson(Map<String, dynamic> json) =>
      _$TriageModelFromJson(json); 
}