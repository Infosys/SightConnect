import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_timeline_model.freezed.dart';
part 'eb_timeline_model.g.dart';

@freezed
class EBTimelineModel with _$EBTimelineModel {
  const factory EBTimelineModel({
    String? serviceRequestId,
    String? title,
    String? stage,
    String? assessmentVersion,
    String? status,
    String? differentiator,
    @TimestampConverter() DateTime? initiateDate,
    @TimestampConverter() DateTime? recentUpdated,
    List<EBTimelineModel>? stages,
  }) = _EBTimelineModel;

  factory EBTimelineModel.fromJson(Map<String, dynamic> json) =>
      _$EBTimelineModelFromJson(json);
}
