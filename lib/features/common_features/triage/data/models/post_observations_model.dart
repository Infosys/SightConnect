import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_observations_model.freezed.dart';
part 'post_observations_model.g.dart';

@freezed
class PostObservationsModel with _$PostObservationsModel{
  const factory PostObservationsModel({
    int? identifier,
    String? value,
    double? score
    
  }) = _PostObservationsModel;

  factory PostObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$PostObservationsModelFromJson(json); 
}