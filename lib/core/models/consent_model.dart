import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_model.freezed.dart';
part 'consent_model.g.dart';

@freezed
class ConsentModel with _$ConsentModel {
  const factory ConsentModel({
    required int templateId,
    required String consentVersion,
    required String consentStatus,
    required String acknowledgeDate,
  }) = _ConsentModel;
  factory ConsentModel.fromJson(Map<String, dynamic> json) =>
      _$ConsentModelFromJson(json);
}
