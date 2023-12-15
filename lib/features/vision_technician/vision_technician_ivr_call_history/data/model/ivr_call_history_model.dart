import 'package:freezed_annotation/freezed_annotation.dart';

part 'ivr_call_history_model.freezed.dart';

part 'ivr_call_history_model.g.dart';

@freezed
class IvrCallHistoryModel with _$IvrCallHistoryModel {
  const factory IvrCallHistoryModel({
    required String patientId,
    required String name,
    int? duration,
    required DateTime logDate,
    required String status,
    required String calltype,
  }) = _IvrCallHistoryModel;

  factory IvrCallHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$IvrCallHistoryModelFromJson(json);
}
