import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_observations_DTO.freezed.dart';
part 'post_observations_DTO.g.dart';

@freezed
class PostObservationsDTO with _$PostObservationsDTO{
  const factory PostObservationsDTO({
    int? identifier,
    String? value,
    double? score
    
  }) = _PostObservationsDTO;

  factory PostObservationsDTO.fromJson(Map<String, dynamic> json) =>
      _$PostObservationsDTOFromJson(json); 
}