import 'package:eye_care_for_all/features/common_features/auth/data/enums/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    int? id,
    String? line,
    String? ward,
    String? town,
    String? village,
    String? subDistrict, 
    String? district,
    String? state,
    String? pinCode,
    String? label,
    Status? status,
    bool? primary,
    bool? deleted
    
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json); 
}