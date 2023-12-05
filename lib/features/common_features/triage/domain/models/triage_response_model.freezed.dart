// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageResponseModel _$TriageResponseModelFromJson(Map<String, dynamic> json) {
  return _TriageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TriageResponseModel {
  int? get patientId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  String? get serviceType => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<PerformerModel>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<IncompleteTestModel>? get incompleteSection =>
      throw _privateConstructorUsedError;
  double? get cummulativeScore => throw _privateConstructorUsedError;
  List<Map<String, double>>? get score => throw _privateConstructorUsedError;
  List<PostImagingSelectionModel>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PostObservationsModel>? get observations =>
      throw _privateConstructorUsedError;
  List<PostQuestionResponseModel>? get questionResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageResponseModelCopyWith<TriageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageResponseModelCopyWith<$Res> {
  factory $TriageResponseModelCopyWith(
          TriageResponseModel value, $Res Function(TriageResponseModel) then) =
      _$TriageResponseModelCopyWithImpl<$Res, TriageResponseModel>;
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      String? serviceType,
      int? organizationCode,
      List<PerformerModel>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      double? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostImagingSelectionModel>? imagingSelection,
      List<PostObservationsModel>? observations,
      List<PostQuestionResponseModel>? questionResponse});
}

/// @nodoc
class _$TriageResponseModelCopyWithImpl<$Res, $Val extends TriageResponseModel>
    implements $TriageResponseModelCopyWith<$Res> {
  _$TriageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? cummulativeScore = freezed,
    Object? score = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      incompleteSection: freezed == incompleteSection
          ? _value.incompleteSection
          : incompleteSection // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as double?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionModel>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageResponseModelCopyWith<$Res>
    implements $TriageResponseModelCopyWith<$Res> {
  factory _$$_TriageResponseModelCopyWith(_$_TriageResponseModel value,
          $Res Function(_$_TriageResponseModel) then) =
      __$$_TriageResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      String? serviceType,
      int? organizationCode,
      List<PerformerModel>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      double? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostImagingSelectionModel>? imagingSelection,
      List<PostObservationsModel>? observations,
      List<PostQuestionResponseModel>? questionResponse});
}

/// @nodoc
class __$$_TriageResponseModelCopyWithImpl<$Res>
    extends _$TriageResponseModelCopyWithImpl<$Res, _$_TriageResponseModel>
    implements _$$_TriageResponseModelCopyWith<$Res> {
  __$$_TriageResponseModelCopyWithImpl(_$_TriageResponseModel _value,
      $Res Function(_$_TriageResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? encounterId = freezed,
    Object? serviceType = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? userStartDate = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? cummulativeScore = freezed,
    Object? score = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_$_TriageResponseModel(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      encounterId: freezed == encounterId
          ? _value.encounterId
          : encounterId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<PerformerModel>?,
      assessmentCode: freezed == assessmentCode
          ? _value.assessmentCode
          : assessmentCode // ignore: cast_nullable_to_non_nullable
              as int?,
      assessmentVersion: freezed == assessmentVersion
          ? _value.assessmentVersion
          : assessmentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userStartDate: freezed == userStartDate
          ? _value.userStartDate
          : userStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
      sourceVersion: freezed == sourceVersion
          ? _value.sourceVersion
          : sourceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      incompleteSection: freezed == incompleteSection
          ? _value._incompleteSection
          : incompleteSection // ignore: cast_nullable_to_non_nullable
              as List<IncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as double?,
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostImagingSelectionModel>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostQuestionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriageResponseModel implements _TriageResponseModel {
  const _$_TriageResponseModel(
      {this.patientId,
      this.encounterId,
      this.serviceType,
      this.organizationCode,
      final List<PerformerModel>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.sourceVersion,
      final List<IncompleteTestModel>? incompleteSection,
      this.cummulativeScore,
      final List<Map<String, double>>? score,
      final List<PostImagingSelectionModel>? imagingSelection,
      final List<PostObservationsModel>? observations,
      final List<PostQuestionResponseModel>? questionResponse})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _score = score,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$_TriageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriageResponseModelFromJson(json);

  @override
  final int? patientId;
  @override
  final int? encounterId;
  @override
  final String? serviceType;
  @override
  final int? organizationCode;
  final List<PerformerModel>? _performer;
  @override
  List<PerformerModel>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? assessmentCode;
  @override
  final String? assessmentVersion;
  @override
  @TimestampConverter()
  final DateTime? issued;
  @override
  @TimestampConverter()
  final DateTime? userStartDate;
  @override
  final Source? source;
  @override
  final String? sourceVersion;
  final List<IncompleteTestModel>? _incompleteSection;
  @override
  List<IncompleteTestModel>? get incompleteSection {
    final value = _incompleteSection;
    if (value == null) return null;
    if (_incompleteSection is EqualUnmodifiableListView)
      return _incompleteSection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? cummulativeScore;
  final List<Map<String, double>>? _score;
  @override
  List<Map<String, double>>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostImagingSelectionModel>? _imagingSelection;
  @override
  List<PostImagingSelectionModel>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostObservationsModel>? _observations;
  @override
  List<PostObservationsModel>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostQuestionResponseModel>? _questionResponse;
  @override
  List<PostQuestionResponseModel>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageResponseModel(patientId: $patientId, encounterId: $encounterId, serviceType: $serviceType, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageResponseModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.encounterId, encounterId) ||
                other.encounterId == encounterId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.userStartDate, userStartDate) ||
                other.userStartDate == userStartDate) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceVersion, sourceVersion) ||
                other.sourceVersion == sourceVersion) &&
            const DeepCollectionEquality()
                .equals(other._incompleteSection, _incompleteSection) &&
            (identical(other.cummulativeScore, cummulativeScore) ||
                other.cummulativeScore == cummulativeScore) &&
            const DeepCollectionEquality().equals(other._score, _score) &&
            const DeepCollectionEquality()
                .equals(other._imagingSelection, _imagingSelection) &&
            const DeepCollectionEquality()
                .equals(other._observations, _observations) &&
            const DeepCollectionEquality()
                .equals(other._questionResponse, _questionResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      patientId,
      encounterId,
      serviceType,
      organizationCode,
      const DeepCollectionEquality().hash(_performer),
      assessmentCode,
      assessmentVersion,
      issued,
      userStartDate,
      source,
      sourceVersion,
      const DeepCollectionEquality().hash(_incompleteSection),
      cummulativeScore,
      const DeepCollectionEquality().hash(_score),
      const DeepCollectionEquality().hash(_imagingSelection),
      const DeepCollectionEquality().hash(_observations),
      const DeepCollectionEquality().hash(_questionResponse));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageResponseModelCopyWith<_$_TriageResponseModel> get copyWith =>
      __$$_TriageResponseModelCopyWithImpl<_$_TriageResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageResponseModelToJson(
      this,
    );
  }
}

abstract class _TriageResponseModel implements TriageResponseModel {
  const factory _TriageResponseModel(
          {final int? patientId,
          final int? encounterId,
          final String? serviceType,
          final int? organizationCode,
          final List<PerformerModel>? performer,
          final int? assessmentCode,
          final String? assessmentVersion,
          @TimestampConverter() final DateTime? issued,
          @TimestampConverter() final DateTime? userStartDate,
          final Source? source,
          final String? sourceVersion,
          final List<IncompleteTestModel>? incompleteSection,
          final double? cummulativeScore,
          final List<Map<String, double>>? score,
          final List<PostImagingSelectionModel>? imagingSelection,
          final List<PostObservationsModel>? observations,
          final List<PostQuestionResponseModel>? questionResponse}) =
      _$_TriageResponseModel;

  factory _TriageResponseModel.fromJson(Map<String, dynamic> json) =
      _$_TriageResponseModel.fromJson;

  @override
  int? get patientId;
  @override
  int? get encounterId;
  @override
  String? get serviceType;
  @override
  int? get organizationCode;
  @override
  List<PerformerModel>? get performer;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
  @TimestampConverter()
  DateTime? get issued;
  @override
  @TimestampConverter()
  DateTime? get userStartDate;
  @override
  Source? get source;
  @override
  String? get sourceVersion;
  @override
  List<IncompleteTestModel>? get incompleteSection;
  @override
  double? get cummulativeScore;
  @override
  List<Map<String, double>>? get score;
  @override
  List<PostImagingSelectionModel>? get imagingSelection;
  @override
  List<PostObservationsModel>? get observations;
  @override
  List<PostQuestionResponseModel>? get questionResponse;
  @override
  @JsonKey(ignore: true)
  _$$_TriageResponseModelCopyWith<_$_TriageResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostImagingSelectionModel _$PostImagingSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _PostImagingSelectionModel.fromJson(json);
}

/// @nodoc
mixin _$PostImagingSelectionModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostImagingSelectionModelCopyWith<PostImagingSelectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImagingSelectionModelCopyWith<$Res> {
  factory $PostImagingSelectionModelCopyWith(PostImagingSelectionModel value,
          $Res Function(PostImagingSelectionModel) then) =
      _$PostImagingSelectionModelCopyWithImpl<$Res, PostImagingSelectionModel>;
  @useResult
  $Res call(
      {int? identifier, String? endpoint, String? baseUrl, double? score});
}

/// @nodoc
class _$PostImagingSelectionModelCopyWithImpl<$Res,
        $Val extends PostImagingSelectionModel>
    implements $PostImagingSelectionModelCopyWith<$Res> {
  _$PostImagingSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostImagingSelectionModelCopyWith<$Res>
    implements $PostImagingSelectionModelCopyWith<$Res> {
  factory _$$_PostImagingSelectionModelCopyWith(
          _$_PostImagingSelectionModel value,
          $Res Function(_$_PostImagingSelectionModel) then) =
      __$$_PostImagingSelectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier, String? endpoint, String? baseUrl, double? score});
}

/// @nodoc
class __$$_PostImagingSelectionModelCopyWithImpl<$Res>
    extends _$PostImagingSelectionModelCopyWithImpl<$Res,
        _$_PostImagingSelectionModel>
    implements _$$_PostImagingSelectionModelCopyWith<$Res> {
  __$$_PostImagingSelectionModelCopyWithImpl(
      _$_PostImagingSelectionModel _value,
      $Res Function(_$_PostImagingSelectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostImagingSelectionModel(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      endpoint: freezed == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostImagingSelectionModel implements _PostImagingSelectionModel {
  const _$_PostImagingSelectionModel(
      {this.identifier, this.endpoint, this.baseUrl, this.score});

  factory _$_PostImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostImagingSelectionModelFromJson(json);

  @override
  final int? identifier;
  @override
  final String? endpoint;
  @override
  final String? baseUrl;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostImagingSelectionModel(identifier: $identifier, endpoint: $endpoint, baseUrl: $baseUrl, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostImagingSelectionModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, endpoint, baseUrl, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostImagingSelectionModelCopyWith<_$_PostImagingSelectionModel>
      get copyWith => __$$_PostImagingSelectionModelCopyWithImpl<
          _$_PostImagingSelectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostImagingSelectionModelToJson(
      this,
    );
  }
}

abstract class _PostImagingSelectionModel implements PostImagingSelectionModel {
  const factory _PostImagingSelectionModel(
      {final int? identifier,
      final String? endpoint,
      final String? baseUrl,
      final double? score}) = _$_PostImagingSelectionModel;

  factory _PostImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$_PostImagingSelectionModel.fromJson;

  @override
  int? get identifier;
  @override
  String? get endpoint;
  @override
  String? get baseUrl;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostImagingSelectionModelCopyWith<_$_PostImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

PostObservationsModel _$PostObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PostObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PostObservationsModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostObservationsModelCopyWith<PostObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostObservationsModelCopyWith<$Res> {
  factory $PostObservationsModelCopyWith(PostObservationsModel value,
          $Res Function(PostObservationsModel) then) =
      _$PostObservationsModelCopyWithImpl<$Res, PostObservationsModel>;
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostObservationsModelCopyWithImpl<$Res,
        $Val extends PostObservationsModel>
    implements $PostObservationsModelCopyWith<$Res> {
  _$PostObservationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostObservationsModelCopyWith<$Res>
    implements $PostObservationsModelCopyWith<$Res> {
  factory _$$_PostObservationsModelCopyWith(_$_PostObservationsModel value,
          $Res Function(_$_PostObservationsModel) then) =
      __$$_PostObservationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class __$$_PostObservationsModelCopyWithImpl<$Res>
    extends _$PostObservationsModelCopyWithImpl<$Res, _$_PostObservationsModel>
    implements _$$_PostObservationsModelCopyWith<$Res> {
  __$$_PostObservationsModelCopyWithImpl(_$_PostObservationsModel _value,
      $Res Function(_$_PostObservationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostObservationsModel(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostObservationsModel implements _PostObservationsModel {
  const _$_PostObservationsModel({this.identifier, this.value, this.score});

  factory _$_PostObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostObservationsModelFromJson(json);

  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostObservationsModel(identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostObservationsModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostObservationsModelCopyWith<_$_PostObservationsModel> get copyWith =>
      __$$_PostObservationsModelCopyWithImpl<_$_PostObservationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostObservationsModelToJson(
      this,
    );
  }
}

abstract class _PostObservationsModel implements PostObservationsModel {
  const factory _PostObservationsModel(
      {final int? identifier,
      final String? value,
      final double? score}) = _$_PostObservationsModel;

  factory _PostObservationsModel.fromJson(Map<String, dynamic> json) =
      _$_PostObservationsModel.fromJson;

  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostObservationsModelCopyWith<_$_PostObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireResponseModel _$QuestionnaireResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvalDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastReviewDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveFrom => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get effectiveTill => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastModifiedDate => throw _privateConstructorUsedError;
  int? get publisherCode => throw _privateConstructorUsedError;
  String? get publisherType => throw _privateConstructorUsedError;
  List<QuestionResponseModel>? get questionResponseDTO =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireResponseModelCopyWith<QuestionnaireResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireResponseModelCopyWith<$Res> {
  factory $QuestionnaireResponseModelCopyWith(QuestionnaireResponseModel value,
          $Res Function(QuestionnaireResponseModel) then) =
      _$QuestionnaireResponseModelCopyWithImpl<$Res,
          QuestionnaireResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
      String? publisherType,
      List<QuestionResponseModel>? questionResponseDTO});
}

/// @nodoc
class _$QuestionnaireResponseModelCopyWithImpl<$Res,
        $Val extends QuestionnaireResponseModel>
    implements $QuestionnaireResponseModelCopyWith<$Res> {
  _$QuestionnaireResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionResponseDTO = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponseDTO: freezed == questionResponseDTO
          ? _value.questionResponseDTO
          : questionResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireResponseModelCopyWith<$Res>
    implements $QuestionnaireResponseModelCopyWith<$Res> {
  factory _$$_QuestionnaireResponseModelCopyWith(
          _$_QuestionnaireResponseModel value,
          $Res Function(_$_QuestionnaireResponseModel) then) =
      __$$_QuestionnaireResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? version,
      @TimestampConverter() DateTime? approvalDate,
      @TimestampConverter() DateTime? lastReviewDate,
      @TimestampConverter() DateTime? effectiveFrom,
      @TimestampConverter() DateTime? effectiveTill,
      @TimestampConverter() DateTime? creationDate,
      @TimestampConverter() DateTime? lastModifiedDate,
      int? publisherCode,
      String? publisherType,
      List<QuestionResponseModel>? questionResponseDTO});
}

/// @nodoc
class __$$_QuestionnaireResponseModelCopyWithImpl<$Res>
    extends _$QuestionnaireResponseModelCopyWithImpl<$Res,
        _$_QuestionnaireResponseModel>
    implements _$$_QuestionnaireResponseModelCopyWith<$Res> {
  __$$_QuestionnaireResponseModelCopyWithImpl(
      _$_QuestionnaireResponseModel _value,
      $Res Function(_$_QuestionnaireResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? version = freezed,
    Object? approvalDate = freezed,
    Object? lastReviewDate = freezed,
    Object? effectiveFrom = freezed,
    Object? effectiveTill = freezed,
    Object? creationDate = freezed,
    Object? lastModifiedDate = freezed,
    Object? publisherCode = freezed,
    Object? publisherType = freezed,
    Object? questionResponseDTO = freezed,
  }) {
    return _then(_$_QuestionnaireResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveFrom: freezed == effectiveFrom
          ? _value.effectiveFrom
          : effectiveFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      effectiveTill: freezed == effectiveTill
          ? _value.effectiveTill
          : effectiveTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastModifiedDate: freezed == lastModifiedDate
          ? _value.lastModifiedDate
          : lastModifiedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publisherCode: freezed == publisherCode
          ? _value.publisherCode
          : publisherCode // ignore: cast_nullable_to_non_nullable
              as int?,
      publisherType: freezed == publisherType
          ? _value.publisherType
          : publisherType // ignore: cast_nullable_to_non_nullable
              as String?,
      questionResponseDTO: freezed == questionResponseDTO
          ? _value._questionResponseDTO
          : questionResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<QuestionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireResponseModel implements _QuestionnaireResponseModel {
  const _$_QuestionnaireResponseModel(
      {this.id,
      this.name,
      this.description,
      this.version,
      @TimestampConverter() this.approvalDate,
      @TimestampConverter() this.lastReviewDate,
      @TimestampConverter() this.effectiveFrom,
      @TimestampConverter() this.effectiveTill,
      @TimestampConverter() this.creationDate,
      @TimestampConverter() this.lastModifiedDate,
      this.publisherCode,
      this.publisherType,
      final List<QuestionResponseModel>? questionResponseDTO})
      : _questionResponseDTO = questionResponseDTO;

  factory _$_QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? version;
  @override
  @TimestampConverter()
  final DateTime? approvalDate;
  @override
  @TimestampConverter()
  final DateTime? lastReviewDate;
  @override
  @TimestampConverter()
  final DateTime? effectiveFrom;
  @override
  @TimestampConverter()
  final DateTime? effectiveTill;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  @TimestampConverter()
  final DateTime? lastModifiedDate;
  @override
  final int? publisherCode;
  @override
  final String? publisherType;
  final List<QuestionResponseModel>? _questionResponseDTO;
  @override
  List<QuestionResponseModel>? get questionResponseDTO {
    final value = _questionResponseDTO;
    if (value == null) return null;
    if (_questionResponseDTO is EqualUnmodifiableListView)
      return _questionResponseDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireResponseModel(id: $id, name: $name, description: $description, version: $version, approvalDate: $approvalDate, lastReviewDate: $lastReviewDate, effectiveFrom: $effectiveFrom, effectiveTill: $effectiveTill, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType, questionResponseDTO: $questionResponseDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.effectiveFrom, effectiveFrom) ||
                other.effectiveFrom == effectiveFrom) &&
            (identical(other.effectiveTill, effectiveTill) ||
                other.effectiveTill == effectiveTill) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.lastModifiedDate, lastModifiedDate) ||
                other.lastModifiedDate == lastModifiedDate) &&
            (identical(other.publisherCode, publisherCode) ||
                other.publisherCode == publisherCode) &&
            (identical(other.publisherType, publisherType) ||
                other.publisherType == publisherType) &&
            const DeepCollectionEquality()
                .equals(other._questionResponseDTO, _questionResponseDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      version,
      approvalDate,
      lastReviewDate,
      effectiveFrom,
      effectiveTill,
      creationDate,
      lastModifiedDate,
      publisherCode,
      publisherType,
      const DeepCollectionEquality().hash(_questionResponseDTO));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireResponseModelCopyWith<_$_QuestionnaireResponseModel>
      get copyWith => __$$_QuestionnaireResponseModelCopyWithImpl<
          _$_QuestionnaireResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireResponseModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireResponseModel
    implements QuestionnaireResponseModel {
  const factory _QuestionnaireResponseModel(
          {final int? id,
          final String? name,
          final String? description,
          final String? version,
          @TimestampConverter() final DateTime? approvalDate,
          @TimestampConverter() final DateTime? lastReviewDate,
          @TimestampConverter() final DateTime? effectiveFrom,
          @TimestampConverter() final DateTime? effectiveTill,
          @TimestampConverter() final DateTime? creationDate,
          @TimestampConverter() final DateTime? lastModifiedDate,
          final int? publisherCode,
          final String? publisherType,
          final List<QuestionResponseModel>? questionResponseDTO}) =
      _$_QuestionnaireResponseModel;

  factory _QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get version;
  @override
  @TimestampConverter()
  DateTime? get approvalDate;
  @override
  @TimestampConverter()
  DateTime? get lastReviewDate;
  @override
  @TimestampConverter()
  DateTime? get effectiveFrom;
  @override
  @TimestampConverter()
  DateTime? get effectiveTill;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @TimestampConverter()
  DateTime? get lastModifiedDate;
  @override
  int? get publisherCode;
  @override
  String? get publisherType;
  @override
  List<QuestionResponseModel>? get questionResponseDTO;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireResponseModelCopyWith<_$_QuestionnaireResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionResponseModel _$QuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get definition => throw _privateConstructorUsedError;
  Constraint? get constraint => throw _privateConstructorUsedError;
  String? get defaultValue => throw _privateConstructorUsedError;
  EnableBehaviour? get enableBehaviour => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  DisabledDisplay? get disabledDisplay => throw _privateConstructorUsedError;
  String? get prefix => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<ActionOnResponseModel>? get actionOnResponseDTO =>
      throw _privateConstructorUsedError;
  bool? get readOnly => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionResponseModelCopyWith<QuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseModelCopyWith<$Res> {
  factory $QuestionResponseModelCopyWith(QuestionResponseModel value,
          $Res Function(QuestionResponseModel) then) =
      _$QuestionResponseModelCopyWithImpl<$Res, QuestionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? definition,
      Constraint? constraint,
      String? defaultValue,
      EnableBehaviour? enableBehaviour,
      int? maxLength,
      DisabledDisplay? disabledDisplay,
      String? prefix,
      int? weight,
      String? image,
      List<ActionOnResponseModel>? actionOnResponseDTO,
      bool? readOnly,
      bool? required});
}

/// @nodoc
class _$QuestionResponseModelCopyWithImpl<$Res,
        $Val extends QuestionResponseModel>
    implements $QuestionResponseModelCopyWith<$Res> {
  _$QuestionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? definition = freezed,
    Object? constraint = freezed,
    Object? defaultValue = freezed,
    Object? enableBehaviour = freezed,
    Object? maxLength = freezed,
    Object? disabledDisplay = freezed,
    Object? prefix = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? actionOnResponseDTO = freezed,
    Object? readOnly = freezed,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as Constraint?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOnResponseDTO: freezed == actionOnResponseDTO
          ? _value.actionOnResponseDTO
          : actionOnResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<ActionOnResponseModel>?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionResponseModelCopyWith<$Res>
    implements $QuestionResponseModelCopyWith<$Res> {
  factory _$$_QuestionResponseModelCopyWith(_$_QuestionResponseModel value,
          $Res Function(_$_QuestionResponseModel) then) =
      __$$_QuestionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? definition,
      Constraint? constraint,
      String? defaultValue,
      EnableBehaviour? enableBehaviour,
      int? maxLength,
      DisabledDisplay? disabledDisplay,
      String? prefix,
      int? weight,
      String? image,
      List<ActionOnResponseModel>? actionOnResponseDTO,
      bool? readOnly,
      bool? required});
}

/// @nodoc
class __$$_QuestionResponseModelCopyWithImpl<$Res>
    extends _$QuestionResponseModelCopyWithImpl<$Res, _$_QuestionResponseModel>
    implements _$$_QuestionResponseModelCopyWith<$Res> {
  __$$_QuestionResponseModelCopyWithImpl(_$_QuestionResponseModel _value,
      $Res Function(_$_QuestionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? definition = freezed,
    Object? constraint = freezed,
    Object? defaultValue = freezed,
    Object? enableBehaviour = freezed,
    Object? maxLength = freezed,
    Object? disabledDisplay = freezed,
    Object? prefix = freezed,
    Object? weight = freezed,
    Object? image = freezed,
    Object? actionOnResponseDTO = freezed,
    Object? readOnly = freezed,
    Object? required = freezed,
  }) {
    return _then(_$_QuestionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as Constraint?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      enableBehaviour: freezed == enableBehaviour
          ? _value.enableBehaviour
          : enableBehaviour // ignore: cast_nullable_to_non_nullable
              as EnableBehaviour?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      disabledDisplay: freezed == disabledDisplay
          ? _value.disabledDisplay
          : disabledDisplay // ignore: cast_nullable_to_non_nullable
              as DisabledDisplay?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      actionOnResponseDTO: freezed == actionOnResponseDTO
          ? _value._actionOnResponseDTO
          : actionOnResponseDTO // ignore: cast_nullable_to_non_nullable
              as List<ActionOnResponseModel>?,
      readOnly: freezed == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionResponseModel implements _QuestionResponseModel {
  const _$_QuestionResponseModel(
      {this.id,
      this.definition,
      this.constraint,
      this.defaultValue,
      this.enableBehaviour,
      this.maxLength,
      this.disabledDisplay,
      this.prefix,
      this.weight,
      this.image,
      final List<ActionOnResponseModel>? actionOnResponseDTO,
      this.readOnly,
      this.required})
      : _actionOnResponseDTO = actionOnResponseDTO;

  factory _$_QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? definition;
  @override
  final Constraint? constraint;
  @override
  final String? defaultValue;
  @override
  final EnableBehaviour? enableBehaviour;
  @override
  final int? maxLength;
  @override
  final DisabledDisplay? disabledDisplay;
  @override
  final String? prefix;
  @override
  final int? weight;
  @override
  final String? image;
  final List<ActionOnResponseModel>? _actionOnResponseDTO;
  @override
  List<ActionOnResponseModel>? get actionOnResponseDTO {
    final value = _actionOnResponseDTO;
    if (value == null) return null;
    if (_actionOnResponseDTO is EqualUnmodifiableListView)
      return _actionOnResponseDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? readOnly;
  @override
  final bool? required;

  @override
  String toString() {
    return 'QuestionResponseModel(id: $id, definition: $definition, constraint: $constraint, defaultValue: $defaultValue, enableBehaviour: $enableBehaviour, maxLength: $maxLength, disabledDisplay: $disabledDisplay, prefix: $prefix, weight: $weight, image: $image, actionOnResponseDTO: $actionOnResponseDTO, readOnly: $readOnly, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.constraint, constraint) ||
                other.constraint == constraint) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.enableBehaviour, enableBehaviour) ||
                other.enableBehaviour == enableBehaviour) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.disabledDisplay, disabledDisplay) ||
                other.disabledDisplay == disabledDisplay) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._actionOnResponseDTO, _actionOnResponseDTO) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.required, required) ||
                other.required == required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      definition,
      constraint,
      defaultValue,
      enableBehaviour,
      maxLength,
      disabledDisplay,
      prefix,
      weight,
      image,
      const DeepCollectionEquality().hash(_actionOnResponseDTO),
      readOnly,
      required);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionResponseModelCopyWith<_$_QuestionResponseModel> get copyWith =>
      __$$_QuestionResponseModelCopyWithImpl<_$_QuestionResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionResponseModelToJson(
      this,
    );
  }
}

abstract class _QuestionResponseModel implements QuestionResponseModel {
  const factory _QuestionResponseModel(
      {final int? id,
      final String? definition,
      final Constraint? constraint,
      final String? defaultValue,
      final EnableBehaviour? enableBehaviour,
      final int? maxLength,
      final DisabledDisplay? disabledDisplay,
      final String? prefix,
      final int? weight,
      final String? image,
      final List<ActionOnResponseModel>? actionOnResponseDTO,
      final bool? readOnly,
      final bool? required}) = _$_QuestionResponseModel;

  factory _QuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get definition;
  @override
  Constraint? get constraint;
  @override
  String? get defaultValue;
  @override
  EnableBehaviour? get enableBehaviour;
  @override
  int? get maxLength;
  @override
  DisabledDisplay? get disabledDisplay;
  @override
  String? get prefix;
  @override
  int? get weight;
  @override
  String? get image;
  @override
  List<ActionOnResponseModel>? get actionOnResponseDTO;
  @override
  bool? get readOnly;
  @override
  bool? get required;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionResponseModelCopyWith<_$_QuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionOnResponseModel _$ActionOnResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ActionOnResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ActionOnResponseModel {
  int? get id => throw _privateConstructorUsedError;
  Operator? get operator => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  ActionType? get actionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionOnResponseModelCopyWith<ActionOnResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionOnResponseModelCopyWith<$Res> {
  factory $ActionOnResponseModelCopyWith(ActionOnResponseModel value,
          $Res Function(ActionOnResponseModel) then) =
      _$ActionOnResponseModelCopyWithImpl<$Res, ActionOnResponseModel>;
  @useResult
  $Res call(
      {int? id, Operator? operator, String? answer, ActionType? actionType});
}

/// @nodoc
class _$ActionOnResponseModelCopyWithImpl<$Res,
        $Val extends ActionOnResponseModel>
    implements $ActionOnResponseModelCopyWith<$Res> {
  _$ActionOnResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActionOnResponseModelCopyWith<$Res>
    implements $ActionOnResponseModelCopyWith<$Res> {
  factory _$$_ActionOnResponseModelCopyWith(_$_ActionOnResponseModel value,
          $Res Function(_$_ActionOnResponseModel) then) =
      __$$_ActionOnResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, Operator? operator, String? answer, ActionType? actionType});
}

/// @nodoc
class __$$_ActionOnResponseModelCopyWithImpl<$Res>
    extends _$ActionOnResponseModelCopyWithImpl<$Res, _$_ActionOnResponseModel>
    implements _$$_ActionOnResponseModelCopyWith<$Res> {
  __$$_ActionOnResponseModelCopyWithImpl(_$_ActionOnResponseModel _value,
      $Res Function(_$_ActionOnResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? operator = freezed,
    Object? answer = freezed,
    Object? actionType = freezed,
  }) {
    return _then(_$_ActionOnResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as Operator?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      actionType: freezed == actionType
          ? _value.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as ActionType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActionOnResponseModel implements _ActionOnResponseModel {
  const _$_ActionOnResponseModel(
      {this.id, this.operator, this.answer, this.actionType});

  factory _$_ActionOnResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActionOnResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final Operator? operator;
  @override
  final String? answer;
  @override
  final ActionType? actionType;

  @override
  String toString() {
    return 'ActionOnResponseModel(id: $id, operator: $operator, answer: $answer, actionType: $actionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionOnResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, operator, answer, actionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionOnResponseModelCopyWith<_$_ActionOnResponseModel> get copyWith =>
      __$$_ActionOnResponseModelCopyWithImpl<_$_ActionOnResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActionOnResponseModelToJson(
      this,
    );
  }
}

abstract class _ActionOnResponseModel implements ActionOnResponseModel {
  const factory _ActionOnResponseModel(
      {final int? id,
      final Operator? operator,
      final String? answer,
      final ActionType? actionType}) = _$_ActionOnResponseModel;

  factory _ActionOnResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ActionOnResponseModel.fromJson;

  @override
  int? get id;
  @override
  Operator? get operator;
  @override
  String? get answer;
  @override
  ActionType? get actionType;
  @override
  @JsonKey(ignore: true)
  _$$_ActionOnResponseModelCopyWith<_$_ActionOnResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTestModel _$IncompleteTestModelFromJson(Map<String, dynamic> json) {
  return _IncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestModel {
  int? get id => throw _privateConstructorUsedError;
  TestName? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteTestModelCopyWith<IncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteTestModelCopyWith<$Res> {
  factory $IncompleteTestModelCopyWith(
          IncompleteTestModel value, $Res Function(IncompleteTestModel) then) =
      _$IncompleteTestModelCopyWithImpl<$Res, IncompleteTestModel>;
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class _$IncompleteTestModelCopyWithImpl<$Res, $Val extends IncompleteTestModel>
    implements $IncompleteTestModelCopyWith<$Res> {
  _$IncompleteTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IncompleteTestModelCopyWith<$Res>
    implements $IncompleteTestModelCopyWith<$Res> {
  factory _$$_IncompleteTestModelCopyWith(_$_IncompleteTestModel value,
          $Res Function(_$_IncompleteTestModel) then) =
      __$$_IncompleteTestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, TestName? testName});
}

/// @nodoc
class __$$_IncompleteTestModelCopyWithImpl<$Res>
    extends _$IncompleteTestModelCopyWithImpl<$Res, _$_IncompleteTestModel>
    implements _$$_IncompleteTestModelCopyWith<$Res> {
  __$$_IncompleteTestModelCopyWithImpl(_$_IncompleteTestModel _value,
      $Res Function(_$_IncompleteTestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? testName = freezed,
  }) {
    return _then(_$_IncompleteTestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncompleteTestModel implements _IncompleteTestModel {
  const _$_IncompleteTestModel({this.id, this.testName});

  factory _$_IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestModelFromJson(json);

  @override
  final int? id;
  @override
  final TestName? testName;

  @override
  String toString() {
    return 'IncompleteTestModel(id: $id, testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncompleteTestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncompleteTestModelCopyWith<_$_IncompleteTestModel> get copyWith =>
      __$$_IncompleteTestModelCopyWithImpl<_$_IncompleteTestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IncompleteTestModelToJson(
      this,
    );
  }
}

abstract class _IncompleteTestModel implements IncompleteTestModel {
  const factory _IncompleteTestModel(
      {final int? id, final TestName? testName}) = _$_IncompleteTestModel;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTestModel.fromJson;

  @override
  int? get id;
  @override
  TestName? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestModelCopyWith<_$_IncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerModelCopyWith<PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerModelCopyWith<$Res> {
  factory $PerformerModelCopyWith(
          PerformerModel value, $Res Function(PerformerModel) then) =
      _$PerformerModelCopyWithImpl<$Res, PerformerModel>;
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerModelCopyWithImpl<$Res, $Val extends PerformerModel>
    implements $PerformerModelCopyWith<$Res> {
  _$PerformerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerformerModelCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$_PerformerModelCopyWith(
          _$_PerformerModel value, $Res Function(_$_PerformerModel) then) =
      __$$_PerformerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$_PerformerModelCopyWithImpl<$Res>
    extends _$PerformerModelCopyWithImpl<$Res, _$_PerformerModel>
    implements _$$_PerformerModelCopyWith<$Res> {
  __$$_PerformerModelCopyWithImpl(
      _$_PerformerModel _value, $Res Function(_$_PerformerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_PerformerModel(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as PerformerRole?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PerformerModel implements _PerformerModel {
  const _$_PerformerModel({this.role, this.identifier});

  factory _$_PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerModelFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerModel(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformerModel &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      __$$_PerformerModelCopyWithImpl<_$_PerformerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerModelToJson(
      this,
    );
  }
}

abstract class _PerformerModel implements PerformerModel {
  const factory _PerformerModel(
      {final PerformerRole? role, final int? identifier}) = _$_PerformerModel;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$_PerformerModel.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
