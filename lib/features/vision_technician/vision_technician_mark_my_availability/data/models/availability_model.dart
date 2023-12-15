import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability_model.freezed.dart';

part 'availability_model.g.dart';

@freezed
class AvailabilityModel with _$AvailabilityModel {
  const factory AvailabilityModel({required int userId,
    required String userType,
    required String mobile,
    required bool available}) = _AvailabilityModel;

  factory AvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityModelFromJson(json);
}
