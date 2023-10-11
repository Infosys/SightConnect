import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_response.freezed.dart';
part 'triage_response.g.dart';

@freezed
class TriageResponse with _$TriageResponse {
  const factory TriageResponse({
    required int id,
    String? getqVersion,
    String? q1,
    String? q2,
    String? q3,
    String? q4,
    String? q5,
    String? q6,
    String? q7,
    String? q8,
    String? q9,
    String? q10,
    String? q11,
    String? q12,
    String? q14,
    String? q15,
    String? q16,
    String? json,
  }) = _TriageResponse;

  factory TriageResponse.fromJson(Map<String, Object?> json) =>
      _$TriageResponseFromJson(json);
}
