import 'package:freezed_annotation/freezed_annotation.dart';

part 'ivr_call_history_model.freezed.dart';

part 'ivr_call_history_model.g.dart';

@freezed
class IvrCallHistoryModel with _$IvrCallHistoryModel {
  const factory IvrCallHistoryModel({
    @JsonKey(name: "callerIdentifier") required String patientId,
    @JsonKey(name: "callerName") required String name,
    @JsonKey(name: "callerNumber") String? mobile,
    int? duration,
    required DateTime logDate,
    required String status,
    required String direction,
  }) = _IvrCallHistoryModel;

  factory IvrCallHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$IvrCallHistoryModelFromJson(json);
}
