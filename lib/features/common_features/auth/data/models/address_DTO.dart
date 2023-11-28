import 'package:eye_care_for_all/features/common_features/auth/data/enums/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_DTO.freezed.dart';
part 'address_DTO.g.dart';

@freezed
class AddressDTO with _$AddressDTO {
  const factory AddressDTO({
    int? id,
    String? line,
    String? district, 
    String? state,
    String? pinCode,
    String? label,
    Status? status,
    bool? primary,
    bool? deleted
    
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$AddressDTOFromJson(json); 
}