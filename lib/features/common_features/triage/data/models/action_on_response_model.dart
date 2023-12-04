import 'package:eye_care_for_all/features/common_features/triage/data/enums/action_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/operator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_on_response_model.freezed.dart';
part 'action_on_response_model.g.dart';

@freezed
class ActionOnResponseModel with _$ActionOnResponseModel{
  const factory ActionOnResponseModel({
    int? id,
    Operator? operator,
    String? answer,
    ActionType? actionType
    
  }) = _ActionOnResponseModel;

  factory ActionOnResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActionOnResponseModelFromJson(json); 
}