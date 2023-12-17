import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_DTO.freezed.dart';
part 'location_DTO.g.dart';

@freezed
class LocationDTO with _$LocationDTO {
  const factory LocationDTO({
    String? latitude,
    String? longitude
    
  }) = _LocationDTO;

  factory LocationDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDTOFromJson(json); 
}