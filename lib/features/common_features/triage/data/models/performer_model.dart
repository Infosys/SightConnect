import 'package:eye_care_for_all/features/common_features/triage/data/enums/performer_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performer_model.freezed.dart';
part 'performer_model.g.dart';

@freezed
class PerformerModel with _$PerformerModel{
  const factory PerformerModel({
    PerformerRole? role,
    int? identifier
  }) = _PerformerModel;

  factory PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$PerformerModelFromJson(json); 
}