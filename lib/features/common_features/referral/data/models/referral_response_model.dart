import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_response_model.freezed.dart';
part 'referral_response_model.g.dart';

@freezed
class ReferralRequestModel with _$ReferralRequestModel {
  const factory ReferralRequestModel({
    int? id,
    String? code,
    String? registeredMobile,
    int? patientId,
    @TimestampConverter() DateTime? referredDate,
    String? referredBy,
    Map<String, dynamic>? metadata,
  }) = _ReferralRequestModel;
  factory ReferralRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralRequestModelFromJson(json);
}

@freezed
class ReferralCodeModel with _$ReferralCodeModel {
  const factory ReferralCodeModel({
    String? code,
    Map<String, dynamic>? statistics,
  }) = _ReferralCodeModel;
  factory ReferralCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralCodeModelFromJson(json);
}
