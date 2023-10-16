// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageResponse _$TriageResponseFromJson(Map<String, dynamic> json) {
  return _TriageResponse.fromJson(json);
}

/// @nodoc
mixin _$TriageResponse {
  int? get patientId => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get assessmentStartTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get assessmentEndTime => throw _privateConstructorUsedError;
  String? get capturedBy => throw _privateConstructorUsedError;
  List<QuestionResponse>? get questionResponse =>
      throw _privateConstructorUsedError;
  List<Observation>? get observations => throw _privateConstructorUsedError;
  List<MediaCapture>? get mediaCapture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageResponseCopyWith<TriageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageResponseCopyWith<$Res> {
  factory $TriageResponseCopyWith(
          TriageResponse value, $Res Function(TriageResponse) then) =
      _$TriageResponseCopyWithImpl<$Res, TriageResponse>;
  @useResult
  $Res call(
      {int? patientId,
      String? source,
      int? organizationCode,
      int? assessmentCode,
      @TimestampConverter() DateTime? assessmentStartTime,
      @TimestampConverter() DateTime? assessmentEndTime,
      String? capturedBy,
      List<QuestionResponse>? questionResponse,
      List<Observation>? observations,
      List<MediaCapture>? mediaCapture});
}

/// @nodoc
class _$TriageResponseCopyWithImpl<$Res, $Val extends TriageResponse>
    implements $TriageResponseCopyWith<$Res> {
  _$TriageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? source = freezed,
    Object? organizationCode = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentStartTime = freezed,
    Object? assessmentEndTime = freezed,
    Object? capturedBy = freezed,
    Object? questionResponse = freezed,
    Object? observations = freezed,
    Object? mediaCapture = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentStartTime: freezed == assessmentStartTime
          ? _value.assessmentStartTime
          : assessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentEndTime: freezed == assessmentEndTime
          ? _value.assessmentEndTime
          : assessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      capturedBy: freezed == capturedBy
          ? _value.capturedBy
          : capturedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      mediaCapture: freezed == mediaCapture
          ? _value.mediaCapture
          : mediaCapture // ignore: cast_nullable_to_non_nullable
              as List<MediaCapture>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageResponseCopyWith<$Res>
    implements $TriageResponseCopyWith<$Res> {
  factory _$$_TriageResponseCopyWith(
          _$_TriageResponse value, $Res Function(_$_TriageResponse) then) =
      __$$_TriageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      String? source,
      int? organizationCode,
      int? assessmentCode,
      @TimestampConverter() DateTime? assessmentStartTime,
      @TimestampConverter() DateTime? assessmentEndTime,
      String? capturedBy,
      List<QuestionResponse>? questionResponse,
      List<Observation>? observations,
      List<MediaCapture>? mediaCapture});
}

/// @nodoc
class __$$_TriageResponseCopyWithImpl<$Res>
    extends _$TriageResponseCopyWithImpl<$Res, _$_TriageResponse>
    implements _$$_TriageResponseCopyWith<$Res> {
  __$$_TriageResponseCopyWithImpl(
      _$_TriageResponse _value, $Res Function(_$_TriageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? source = freezed,
    Object? organizationCode = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentStartTime = freezed,
    Object? assessmentEndTime = freezed,
    Object? capturedBy = freezed,
    Object? questionResponse = freezed,
    Object? observations = freezed,
    Object? mediaCapture = freezed,
  }) {
    return _then(_$_TriageResponse(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentStartTime: freezed == assessmentStartTime
          ? _value.assessmentStartTime
          : assessmentStartTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      assessmentEndTime: freezed == assessmentEndTime
          ? _value.assessmentEndTime
          : assessmentEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      capturedBy: freezed == capturedBy
          ? _value.capturedBy
          : capturedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponse>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<Observation>?,
      mediaCapture: freezed == mediaCapture
          ? _value._mediaCapture
          : mediaCapture // ignore: cast_nullable_to_non_nullable
              as List<MediaCapture>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TriageResponse implements _TriageResponse {
  const _$_TriageResponse(
      {this.patientId,
      this.source,
      this.organizationCode,
      this.assessmentCode,
      @TimestampConverter() this.assessmentStartTime,
      @TimestampConverter() this.assessmentEndTime,
      this.capturedBy,
      final List<QuestionResponse>? questionResponse,
      final List<Observation>? observations,
      final List<MediaCapture>? mediaCapture})
      : _questionResponse = questionResponse,
        _observations = observations,
        _mediaCapture = mediaCapture;

  factory _$_TriageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TriageResponseFromJson(json);

  @override
  final int? patientId;
  @override
  final String? source;
  @override
  final int? organizationCode;
  @override
  final int? assessmentCode;
  @override
  @TimestampConverter()
  final DateTime? assessmentStartTime;
  @override
  @TimestampConverter()
  final DateTime? assessmentEndTime;
  @override
  final String? capturedBy;
  final List<QuestionResponse>? _questionResponse;
  @override
  List<QuestionResponse>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Observation>? _observations;
  @override
  List<Observation>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaCapture>? _mediaCapture;
  @override
  List<MediaCapture>? get mediaCapture {
    final value = _mediaCapture;
    if (value == null) return null;
    if (_mediaCapture is EqualUnmodifiableListView) return _mediaCapture;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageResponse(patientId: $patientId, source: $source, organizationCode: $organizationCode, assessmentCode: $assessmentCode, assessmentStartTime: $assessmentStartTime, assessmentEndTime: $assessmentEndTime, capturedBy: $capturedBy, questionResponse: $questionResponse, observations: $observations, mediaCapture: $mediaCapture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageResponse &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentStartTime, assessmentStartTime) ||
                other.assessmentStartTime == assessmentStartTime) &&
            (identical(other.assessmentEndTime, assessmentEndTime) ||
                other.assessmentEndTime == assessmentEndTime) &&
            (identical(other.capturedBy, capturedBy) ||
                other.capturedBy == capturedBy) &&
            const DeepCollectionEquality()
                .equals(other._questionResponse, _questionResponse) &&
            const DeepCollectionEquality()
                .equals(other._observations, _observations) &&
            const DeepCollectionEquality()
                .equals(other._mediaCapture, _mediaCapture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientId,
      source,
      organizationCode,
      assessmentCode,
      assessmentStartTime,
      assessmentEndTime,
      capturedBy,
      const DeepCollectionEquality().hash(_questionResponse),
      const DeepCollectionEquality().hash(_observations),
      const DeepCollectionEquality().hash(_mediaCapture));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageResponseCopyWith<_$_TriageResponse> get copyWith =>
      __$$_TriageResponseCopyWithImpl<_$_TriageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageResponseToJson(
      this,
    );
  }
}

abstract class _TriageResponse implements TriageResponse {
  const factory _TriageResponse(
      {final int? patientId,
      final String? source,
      final int? organizationCode,
      final int? assessmentCode,
      @TimestampConverter() final DateTime? assessmentStartTime,
      @TimestampConverter() final DateTime? assessmentEndTime,
      final String? capturedBy,
      final List<QuestionResponse>? questionResponse,
      final List<Observation>? observations,
      final List<MediaCapture>? mediaCapture}) = _$_TriageResponse;

  factory _TriageResponse.fromJson(Map<String, dynamic> json) =
      _$_TriageResponse.fromJson;

  @override
  int? get patientId;
  @override
  String? get source;
  @override
  int? get organizationCode;
  @override
  int? get assessmentCode;
  @override
  @TimestampConverter()
  DateTime? get assessmentStartTime;
  @override
  @TimestampConverter()
  DateTime? get assessmentEndTime;
  @override
  String? get capturedBy;
  @override
  List<QuestionResponse>? get questionResponse;
  @override
  List<Observation>? get observations;
  @override
  List<MediaCapture>? get mediaCapture;
  @override
  @JsonKey(ignore: true)
  _$$_TriageResponseCopyWith<_$_TriageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponse {
  int? get questionCode => throw _privateConstructorUsedError;
  bool? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseCopyWith<QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseCopyWith<$Res> {
  factory $QuestionResponseCopyWith(
          QuestionResponse value, $Res Function(QuestionResponse) then) =
      _$QuestionResponseCopyWithImpl<$Res, QuestionResponse>;
  @useResult
  $Res call({int? questionCode, bool? response});
}

/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res, $Val extends QuestionResponse>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      questionCode: freezed == questionCode
          ? _value.questionCode
          : questionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResponseCopyWith<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  factory _$$_QuestionResponseCopyWith(
          _$_QuestionResponse value, $Res Function(_$_QuestionResponse) then) =
      __$$_QuestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? questionCode, bool? response});
}

/// @nodoc
class __$$_QuestionResponseCopyWithImpl<$Res>
    extends _$QuestionResponseCopyWithImpl<$Res, _$_QuestionResponse>
    implements _$$_QuestionResponseCopyWith<$Res> {
  __$$_QuestionResponseCopyWithImpl(
      _$_QuestionResponse _value, $Res Function(_$_QuestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_QuestionResponse(
      questionCode: freezed == questionCode
          ? _value.questionCode
          : questionCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionResponse implements _QuestionResponse {
  const _$_QuestionResponse({this.questionCode, this.response});

  factory _$_QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionResponseFromJson(json);

  @override
  final int? questionCode;
  @override
  final bool? response;

  @override
  String toString() {
    return 'QuestionResponse(questionCode: $questionCode, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponse &&
            (identical(other.questionCode, questionCode) ||
                other.questionCode == questionCode) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionCode, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith =>
      __$$_QuestionResponseCopyWithImpl<_$_QuestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResponseToJson(
      this,
    );
  }
}

abstract class _QuestionResponse implements QuestionResponse {
  const factory _QuestionResponse(
      {final int? questionCode, final bool? response}) = _$_QuestionResponse;

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionResponse.fromJson;

  @override
  int? get questionCode;
  @override
  bool? get response;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseCopyWith<_$_QuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Observation _$ObservationFromJson(Map<String, dynamic> json) {
  return _Observation.fromJson(json);
}

/// @nodoc
mixin _$Observation {
  int? get observationCode => throw _privateConstructorUsedError;
  double? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationCopyWith<Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationCopyWith<$Res> {
  factory $ObservationCopyWith(
          Observation value, $Res Function(Observation) then) =
      _$ObservationCopyWithImpl<$Res, Observation>;
  @useResult
  $Res call({int? observationCode, double? response});
}

/// @nodoc
class _$ObservationCopyWithImpl<$Res, $Val extends Observation>
    implements $ObservationCopyWith<$Res> {
  _$ObservationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationCopyWith<$Res>
    implements $ObservationCopyWith<$Res> {
  factory _$$_ObservationCopyWith(
          _$_Observation value, $Res Function(_$_Observation) then) =
      __$$_ObservationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? observationCode, double? response});
}

/// @nodoc
class __$$_ObservationCopyWithImpl<$Res>
    extends _$ObservationCopyWithImpl<$Res, _$_Observation>
    implements _$$_ObservationCopyWith<$Res> {
  __$$_ObservationCopyWithImpl(
      _$_Observation _value, $Res Function(_$_Observation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? observationCode = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_Observation(
      observationCode: freezed == observationCode
          ? _value.observationCode
          : observationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Observation implements _Observation {
  const _$_Observation({this.observationCode, this.response});

  factory _$_Observation.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationFromJson(json);

  @override
  final int? observationCode;
  @override
  final double? response;

  @override
  String toString() {
    return 'Observation(observationCode: $observationCode, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Observation &&
            (identical(other.observationCode, observationCode) ||
                other.observationCode == observationCode) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, observationCode, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationCopyWith<_$_Observation> get copyWith =>
      __$$_ObservationCopyWithImpl<_$_Observation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationToJson(
      this,
    );
  }
}

abstract class _Observation implements Observation {
  const factory _Observation(
      {final int? observationCode, final double? response}) = _$_Observation;

  factory _Observation.fromJson(Map<String, dynamic> json) =
      _$_Observation.fromJson;

  @override
  int? get observationCode;
  @override
  double? get response;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationCopyWith<_$_Observation> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaCapture _$MediaCaptureFromJson(Map<String, dynamic> json) {
  return _MediaCapture.fromJson(json);
}

/// @nodoc
mixin _$MediaCapture {
  int? get mediaCode => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  String? get encodingType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCaptureCopyWith<MediaCapture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCaptureCopyWith<$Res> {
  factory $MediaCaptureCopyWith(
          MediaCapture value, $Res Function(MediaCapture) then) =
      _$MediaCaptureCopyWithImpl<$Res, MediaCapture>;
  @useResult
  $Res call(
      {int? mediaCode,
      String? fileName,
      String? fileType,
      String? encodingType});
}

/// @nodoc
class _$MediaCaptureCopyWithImpl<$Res, $Val extends MediaCapture>
    implements $MediaCaptureCopyWith<$Res> {
  _$MediaCaptureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? encodingType = freezed,
  }) {
    return _then(_value.copyWith(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaCaptureCopyWith<$Res>
    implements $MediaCaptureCopyWith<$Res> {
  factory _$$_MediaCaptureCopyWith(
          _$_MediaCapture value, $Res Function(_$_MediaCapture) then) =
      __$$_MediaCaptureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mediaCode,
      String? fileName,
      String? fileType,
      String? encodingType});
}

/// @nodoc
class __$$_MediaCaptureCopyWithImpl<$Res>
    extends _$MediaCaptureCopyWithImpl<$Res, _$_MediaCapture>
    implements _$$_MediaCaptureCopyWith<$Res> {
  __$$_MediaCaptureCopyWithImpl(
      _$_MediaCapture _value, $Res Function(_$_MediaCapture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaCode = freezed,
    Object? fileName = freezed,
    Object? fileType = freezed,
    Object? encodingType = freezed,
  }) {
    return _then(_$_MediaCapture(
      mediaCode: freezed == mediaCode
          ? _value.mediaCode
          : mediaCode // ignore: cast_nullable_to_non_nullable
              as int?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      encodingType: freezed == encodingType
          ? _value.encodingType
          : encodingType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaCapture implements _MediaCapture {
  const _$_MediaCapture(
      {this.mediaCode, this.fileName, this.fileType, this.encodingType});

  factory _$_MediaCapture.fromJson(Map<String, dynamic> json) =>
      _$$_MediaCaptureFromJson(json);

  @override
  final int? mediaCode;
  @override
  final String? fileName;
  @override
  final String? fileType;
  @override
  final String? encodingType;

  @override
  String toString() {
    return 'MediaCapture(mediaCode: $mediaCode, fileName: $fileName, fileType: $fileType, encodingType: $encodingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaCapture &&
            (identical(other.mediaCode, mediaCode) ||
                other.mediaCode == mediaCode) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.encodingType, encodingType) ||
                other.encodingType == encodingType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mediaCode, fileName, fileType, encodingType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaCaptureCopyWith<_$_MediaCapture> get copyWith =>
      __$$_MediaCaptureCopyWithImpl<_$_MediaCapture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaCaptureToJson(
      this,
    );
  }
}

abstract class _MediaCapture implements MediaCapture {
  const factory _MediaCapture(
      {final int? mediaCode,
      final String? fileName,
      final String? fileType,
      final String? encodingType}) = _$_MediaCapture;

  factory _MediaCapture.fromJson(Map<String, dynamic> json) =
      _$_MediaCapture.fromJson;

  @override
  int? get mediaCode;
  @override
  String? get fileName;
  @override
  String? get fileType;
  @override
  String? get encodingType;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCaptureCopyWith<_$_MediaCapture> get copyWith =>
      throw _privateConstructorUsedError;
}
