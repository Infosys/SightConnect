import 'package:freezed_annotation/freezed_annotation.dart';

part 'consent_model.freezed.dart';
part 'consent_model.g.dart';

@freezed
class ConsentModel with _$ConsentModel {
  const factory ConsentModel({
    int? templateId,
    String? consentVersion,
    String? templateType,
    @Default(ConsentStatus.PENDING) ConsentStatus consentStatus,
    String? acknowledgeDate,
  }) = _ConsentModel;
  factory ConsentModel.fromJson(Map<String, dynamic> json) =>
      _$ConsentModelFromJson(json);
}

enum ConsentStatus { ACKNOWLEDGED, WITHDRAWN, PENDING }
