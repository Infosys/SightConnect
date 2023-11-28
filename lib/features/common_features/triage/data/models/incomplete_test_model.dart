import 'package:eye_care_for_all/features/common_features/triage/data/enums/test_name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'incomplete_test_model.freezed.dart';
part 'incomplete_test_model.g.dart';

@freezed
class IncompleteTestModel with _$IncompleteTestModel{
  const factory IncompleteTestModel({
    int? id,
    TestName? testName
    
  }) = _IncompleteTestModel;

  factory IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$IncompleteTestModelFromJson(json); 
}