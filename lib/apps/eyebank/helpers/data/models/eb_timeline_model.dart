import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_timeline_model.freezed.dart';
part 'eb_timeline_model.g.dart';

@freezed
class EBTimelineModel with _$EBTimelineModel {
  const factory EBTimelineModel({
    int? serviceRequestId,
    String? assessmentName,
    String? stageName,
    String? assessmentVersion,
    String? status,
    DateTime? initiateDate,
    DateTime? recentUpdated,
    List<String>? subStages,
  }) = _EBTimelineModel;

  factory EBTimelineModel.fromJson(Map<String, dynamic> json) =>
      _$EBTimelineModelFromJson(json);
}
