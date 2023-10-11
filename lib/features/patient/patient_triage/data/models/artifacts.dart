import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/models/timestamp_converter.dart';
import '../enums/triage_enums.dart';

part 'artifacts.freezed.dart';
part 'artifacts.g.dart';

@freezed
class Artifacts with _$Artifacts {
  const factory Artifacts({
    required int id,
    List<ArtifactImage>? images,
  }) = _Artifacts;

  factory Artifacts.fromJson(Map<String, Object?> json) =>
      _$ArtifactsFromJson(json);
}

@freezed
class ArtifactImage with _$ArtifactImage {
  const factory ArtifactImage({
    required int id,
    @TimestampConverter() DateTime? timestamp,
    String? baseUrl,
    String? path,
    TriageEyeType? type,
  }) = _ArtifactImage;

  factory ArtifactImage.fromJson(Map<String, Object?> json) =>
      _$ArtifactImageFromJson(json);
}
