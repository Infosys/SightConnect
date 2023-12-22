// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriagePostModel _$TriagePostModelFromJson(Map<String, dynamic> json) {
  return _TriagePostModel.fromJson(json);
}

/// @nodoc
mixin _$TriagePostModel {
  int? get patientId => throw _privateConstructorUsedError;
  int? get encounterId => throw _privateConstructorUsedError;
  ServiceType? get serviceType => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<Performer>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get userStartDate => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<PostIncompleteTestModel>? get incompleteSection =>
      throw _privateConstructorUsedError;
  int? get cummulativeScore => throw _privateConstructorUsedError;
  List<Map<String, double>>? get score => throw _privateConstructorUsedError;
  List<PostTriageImagingSelectionModel>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PostTriageObservationsModel>? get observations =>
      throw _privateConstructorUsedError;
  List<PostTriageQuestionModel>? get questionResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriagePostModelCopyWith<TriagePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriagePostModelCopyWith<$Res> {
  factory $TriagePostModelCopyWith(
          TriagePostModel value, $Res Function(TriagePostModel) then) =
      _$TriagePostModelCopyWithImpl<$Res, TriagePostModel>;
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<PostIncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostTriageImagingSelectionModel>? imagingSelection,
      List<PostTriageObservationsModel>? observations,
      List<PostTriageQuestionModel>? questionResponse});
}

/// @nodoc
class _$TriagePostModelCopyWithImpl<$Res, $Val extends TriagePostModel>
    implements $TriagePostModelCopyWith<$Res> {
  _$TriagePostModelCopyWithImpl(this._value, this._then);

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
              as ServiceType?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
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
              as List<PostIncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostTriageImagingSelectionModel>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostTriageObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostTriageQuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriagePostModelCopyWith<$Res>
    implements $TriagePostModelCopyWith<$Res> {
  factory _$$_TriagePostModelCopyWith(
          _$_TriagePostModel value, $Res Function(_$_TriagePostModel) then) =
      __$$_TriagePostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? encounterId,
      ServiceType? serviceType,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      @TimestampConverter() DateTime? userStartDate,
      Source? source,
      String? sourceVersion,
      List<PostIncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, double>>? score,
      List<PostTriageImagingSelectionModel>? imagingSelection,
      List<PostTriageObservationsModel>? observations,
      List<PostTriageQuestionModel>? questionResponse});
}

/// @nodoc
class __$$_TriagePostModelCopyWithImpl<$Res>
    extends _$TriagePostModelCopyWithImpl<$Res, _$_TriagePostModel>
    implements _$$_TriagePostModelCopyWith<$Res> {
  __$$_TriagePostModelCopyWithImpl(
      _$_TriagePostModel _value, $Res Function(_$_TriagePostModel) _then)
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
    return _then(_$_TriagePostModel(
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
              as ServiceType?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as int?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
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
              as List<PostIncompleteTestModel>?,
      cummulativeScore: freezed == cummulativeScore
          ? _value.cummulativeScore
          : cummulativeScore // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PostTriageImagingSelectionModel>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PostTriageObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PostTriageQuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriagePostModel implements _TriagePostModel {
  const _$_TriagePostModel(
      {this.patientId,
      this.encounterId,
      this.serviceType,
      this.organizationCode,
      final List<Performer>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      @TimestampConverter() this.issued,
      @TimestampConverter() this.userStartDate,
      this.source,
      this.sourceVersion,
      final List<PostIncompleteTestModel>? incompleteSection,
      this.cummulativeScore,
      final List<Map<String, double>>? score,
      final List<PostTriageImagingSelectionModel>? imagingSelection,
      final List<PostTriageObservationsModel>? observations,
      final List<PostTriageQuestionModel>? questionResponse})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _score = score,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$_TriagePostModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriagePostModelFromJson(json);

  @override
  final int? patientId;
  @override
  final int? encounterId;
  @override
  final ServiceType? serviceType;
  @override
  final int? organizationCode;
  final List<Performer>? _performer;
  @override
  List<Performer>? get performer {
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
  final List<PostIncompleteTestModel>? _incompleteSection;
  @override
  List<PostIncompleteTestModel>? get incompleteSection {
    final value = _incompleteSection;
    if (value == null) return null;
    if (_incompleteSection is EqualUnmodifiableListView)
      return _incompleteSection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? cummulativeScore;
  final List<Map<String, double>>? _score;
  @override
  List<Map<String, double>>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageImagingSelectionModel>? _imagingSelection;
  @override
  List<PostTriageImagingSelectionModel>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageObservationsModel>? _observations;
  @override
  List<PostTriageObservationsModel>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostTriageQuestionModel>? _questionResponse;
  @override
  List<PostTriageQuestionModel>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriagePostModel(patientId: $patientId, encounterId: $encounterId, serviceType: $serviceType, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, userStartDate: $userStartDate, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriagePostModel &&
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
  _$$_TriagePostModelCopyWith<_$_TriagePostModel> get copyWith =>
      __$$_TriagePostModelCopyWithImpl<_$_TriagePostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriagePostModelToJson(
      this,
    );
  }
}

abstract class _TriagePostModel implements TriagePostModel {
  const factory _TriagePostModel(
          {final int? patientId,
          final int? encounterId,
          final ServiceType? serviceType,
          final int? organizationCode,
          final List<Performer>? performer,
          final int? assessmentCode,
          final String? assessmentVersion,
          @TimestampConverter() final DateTime? issued,
          @TimestampConverter() final DateTime? userStartDate,
          final Source? source,
          final String? sourceVersion,
          final List<PostIncompleteTestModel>? incompleteSection,
          final int? cummulativeScore,
          final List<Map<String, double>>? score,
          final List<PostTriageImagingSelectionModel>? imagingSelection,
          final List<PostTriageObservationsModel>? observations,
          final List<PostTriageQuestionModel>? questionResponse}) =
      _$_TriagePostModel;

  factory _TriagePostModel.fromJson(Map<String, dynamic> json) =
      _$_TriagePostModel.fromJson;

  @override
  int? get patientId;
  @override
  int? get encounterId;
  @override
  ServiceType? get serviceType;
  @override
  int? get organizationCode;
  @override
  List<Performer>? get performer;
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
  List<PostIncompleteTestModel>? get incompleteSection;
  @override
  int? get cummulativeScore;
  @override
  List<Map<String, double>>? get score;
  @override
  List<PostTriageImagingSelectionModel>? get imagingSelection;
  @override
  List<PostTriageObservationsModel>? get observations;
  @override
  List<PostTriageQuestionModel>? get questionResponse;
  @override
  @JsonKey(ignore: true)
  _$$_TriagePostModelCopyWith<_$_TriagePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostTriageQuestionModel _$PostTriageQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageQuestionModel {
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostTriageAnswerModel>? get answers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageQuestionModelCopyWith<PostTriageQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageQuestionModelCopyWith<$Res> {
  factory $PostTriageQuestionModelCopyWith(PostTriageQuestionModel value,
          $Res Function(PostTriageQuestionModel) then) =
      _$PostTriageQuestionModelCopyWithImpl<$Res, PostTriageQuestionModel>;
  @useResult
  $Res call({int? linkId, double? score, List<PostTriageAnswerModel>? answers});
}

/// @nodoc
class _$PostTriageQuestionModelCopyWithImpl<$Res,
        $Val extends PostTriageQuestionModel>
    implements $PostTriageQuestionModelCopyWith<$Res> {
  _$PostTriageQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answers: freezed == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PostTriageAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostTriageQuestionModelCopyWith<$Res>
    implements $PostTriageQuestionModelCopyWith<$Res> {
  factory _$$_PostTriageQuestionModelCopyWith(_$_PostTriageQuestionModel value,
          $Res Function(_$_PostTriageQuestionModel) then) =
      __$$_PostTriageQuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? linkId, double? score, List<PostTriageAnswerModel>? answers});
}

/// @nodoc
class __$$_PostTriageQuestionModelCopyWithImpl<$Res>
    extends _$PostTriageQuestionModelCopyWithImpl<$Res,
        _$_PostTriageQuestionModel>
    implements _$$_PostTriageQuestionModelCopyWith<$Res> {
  __$$_PostTriageQuestionModelCopyWithImpl(_$_PostTriageQuestionModel _value,
      $Res Function(_$_PostTriageQuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_PostTriageQuestionModel(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answers: freezed == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<PostTriageAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostTriageQuestionModel implements _PostTriageQuestionModel {
  const _$_PostTriageQuestionModel(
      {this.linkId, this.score, final List<PostTriageAnswerModel>? answers})
      : _answers = answers;

  factory _$_PostTriageQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostTriageQuestionModelFromJson(json);

  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostTriageAnswerModel>? _answers;
  @override
  List<PostTriageAnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostTriageQuestionModel(linkId: $linkId, score: $score, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostTriageQuestionModel &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, linkId, score,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostTriageQuestionModelCopyWith<_$_PostTriageQuestionModel>
      get copyWith =>
          __$$_PostTriageQuestionModelCopyWithImpl<_$_PostTriageQuestionModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostTriageQuestionModelToJson(
      this,
    );
  }
}

abstract class _PostTriageQuestionModel implements PostTriageQuestionModel {
  const factory _PostTriageQuestionModel(
      {final int? linkId,
      final double? score,
      final List<PostTriageAnswerModel>? answers}) = _$_PostTriageQuestionModel;

  factory _PostTriageQuestionModel.fromJson(Map<String, dynamic> json) =
      _$_PostTriageQuestionModel.fromJson;

  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostTriageAnswerModel>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$_PostTriageQuestionModelCopyWith<_$_PostTriageQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageAnswerModel _$PostTriageAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageAnswerModel {
  String? get value => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageAnswerModelCopyWith<PostTriageAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageAnswerModelCopyWith<$Res> {
  factory $PostTriageAnswerModelCopyWith(PostTriageAnswerModel value,
          $Res Function(PostTriageAnswerModel) then) =
      _$PostTriageAnswerModelCopyWithImpl<$Res, PostTriageAnswerModel>;
  @useResult
  $Res call({String? value, int? answerCode, double? score});
}

/// @nodoc
class _$PostTriageAnswerModelCopyWithImpl<$Res,
        $Val extends PostTriageAnswerModel>
    implements $PostTriageAnswerModelCopyWith<$Res> {
  _$PostTriageAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostTriageAnswerModelCopyWith<$Res>
    implements $PostTriageAnswerModelCopyWith<$Res> {
  factory _$$_PostTriageAnswerModelCopyWith(_$_PostTriageAnswerModel value,
          $Res Function(_$_PostTriageAnswerModel) then) =
      __$$_PostTriageAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, int? answerCode, double? score});
}

/// @nodoc
class __$$_PostTriageAnswerModelCopyWithImpl<$Res>
    extends _$PostTriageAnswerModelCopyWithImpl<$Res, _$_PostTriageAnswerModel>
    implements _$$_PostTriageAnswerModelCopyWith<$Res> {
  __$$_PostTriageAnswerModelCopyWithImpl(_$_PostTriageAnswerModel _value,
      $Res Function(_$_PostTriageAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostTriageAnswerModel(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      answerCode: freezed == answerCode
          ? _value.answerCode
          : answerCode // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostTriageAnswerModel implements _PostTriageAnswerModel {
  const _$_PostTriageAnswerModel({this.value, this.answerCode, this.score});

  factory _$_PostTriageAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostTriageAnswerModelFromJson(json);

  @override
  final String? value;
  @override
  final int? answerCode;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostTriageAnswerModel(value: $value, answerCode: $answerCode, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostTriageAnswerModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.answerCode, answerCode) ||
                other.answerCode == answerCode) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, answerCode, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostTriageAnswerModelCopyWith<_$_PostTriageAnswerModel> get copyWith =>
      __$$_PostTriageAnswerModelCopyWithImpl<_$_PostTriageAnswerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostTriageAnswerModelToJson(
      this,
    );
  }
}

abstract class _PostTriageAnswerModel implements PostTriageAnswerModel {
  const factory _PostTriageAnswerModel(
      {final String? value,
      final int? answerCode,
      final double? score}) = _$_PostTriageAnswerModel;

  factory _PostTriageAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_PostTriageAnswerModel.fromJson;

  @override
  String? get value;
  @override
  int? get answerCode;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostTriageAnswerModelCopyWith<_$_PostTriageAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Performer _$PerformerFromJson(Map<String, dynamic> json) {
  return _Performer.fromJson(json);
}

/// @nodoc
mixin _$Performer {
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerCopyWith<Performer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerCopyWith<$Res> {
  factory $PerformerCopyWith(Performer value, $Res Function(Performer) then) =
      _$PerformerCopyWithImpl<$Res, Performer>;
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerCopyWithImpl<$Res, $Val extends Performer>
    implements $PerformerCopyWith<$Res> {
  _$PerformerCopyWithImpl(this._value, this._then);

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
abstract class _$$_PerformerCopyWith<$Res> implements $PerformerCopyWith<$Res> {
  factory _$$_PerformerCopyWith(
          _$_Performer value, $Res Function(_$_Performer) then) =
      __$$_PerformerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$_PerformerCopyWithImpl<$Res>
    extends _$PerformerCopyWithImpl<$Res, _$_Performer>
    implements _$$_PerformerCopyWith<$Res> {
  __$$_PerformerCopyWithImpl(
      _$_Performer _value, $Res Function(_$_Performer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_Performer(
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
class _$_Performer implements _Performer {
  const _$_Performer({this.role, this.identifier});

  factory _$_Performer.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'Performer(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Performer &&
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
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      __$$_PerformerCopyWithImpl<_$_Performer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerToJson(
      this,
    );
  }
}

abstract class _Performer implements Performer {
  const factory _Performer({final PerformerRole? role, final int? identifier}) =
      _$_Performer;

  factory _Performer.fromJson(Map<String, dynamic> json) =
      _$_Performer.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      throw _privateConstructorUsedError;
}

PostIncompleteTestModel _$PostIncompleteTestModelFromJson(
    Map<String, dynamic> json) {
  return _PostIncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$PostIncompleteTestModel {
  TestType? get testName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostIncompleteTestModelCopyWith<PostIncompleteTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostIncompleteTestModelCopyWith<$Res> {
  factory $PostIncompleteTestModelCopyWith(PostIncompleteTestModel value,
          $Res Function(PostIncompleteTestModel) then) =
      _$PostIncompleteTestModelCopyWithImpl<$Res, PostIncompleteTestModel>;
  @useResult
  $Res call({TestType? testName});
}

/// @nodoc
class _$PostIncompleteTestModelCopyWithImpl<$Res,
        $Val extends PostIncompleteTestModel>
    implements $PostIncompleteTestModelCopyWith<$Res> {
  _$PostIncompleteTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = freezed,
  }) {
    return _then(_value.copyWith(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostIncompleteTestModelCopyWith<$Res>
    implements $PostIncompleteTestModelCopyWith<$Res> {
  factory _$$_PostIncompleteTestModelCopyWith(_$_PostIncompleteTestModel value,
          $Res Function(_$_PostIncompleteTestModel) then) =
      __$$_PostIncompleteTestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestType? testName});
}

/// @nodoc
class __$$_PostIncompleteTestModelCopyWithImpl<$Res>
    extends _$PostIncompleteTestModelCopyWithImpl<$Res,
        _$_PostIncompleteTestModel>
    implements _$$_PostIncompleteTestModelCopyWith<$Res> {
  __$$_PostIncompleteTestModelCopyWithImpl(_$_PostIncompleteTestModel _value,
      $Res Function(_$_PostIncompleteTestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = freezed,
  }) {
    return _then(_$_PostIncompleteTestModel(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostIncompleteTestModel implements _PostIncompleteTestModel {
  const _$_PostIncompleteTestModel({this.testName});

  factory _$_PostIncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostIncompleteTestModelFromJson(json);

  @override
  final TestType? testName;

  @override
  String toString() {
    return 'PostIncompleteTestModel(testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostIncompleteTestModel &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostIncompleteTestModelCopyWith<_$_PostIncompleteTestModel>
      get copyWith =>
          __$$_PostIncompleteTestModelCopyWithImpl<_$_PostIncompleteTestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostIncompleteTestModelToJson(
      this,
    );
  }
}

abstract class _PostIncompleteTestModel implements PostIncompleteTestModel {
  const factory _PostIncompleteTestModel({final TestType? testName}) =
      _$_PostIncompleteTestModel;

  factory _PostIncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$_PostIncompleteTestModel.fromJson;

  @override
  TestType? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_PostIncompleteTestModelCopyWith<_$_PostIncompleteTestModel>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageObservationsModel _$PostTriageObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageObservationsModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageObservationsModelCopyWith<PostTriageObservationsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageObservationsModelCopyWith<$Res> {
  factory $PostTriageObservationsModelCopyWith(
          PostTriageObservationsModel value,
          $Res Function(PostTriageObservationsModel) then) =
      _$PostTriageObservationsModelCopyWithImpl<$Res,
          PostTriageObservationsModel>;
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class _$PostTriageObservationsModelCopyWithImpl<$Res,
        $Val extends PostTriageObservationsModel>
    implements $PostTriageObservationsModelCopyWith<$Res> {
  _$PostTriageObservationsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PostTriageObservationsModelCopyWith<$Res>
    implements $PostTriageObservationsModelCopyWith<$Res> {
  factory _$$_PostTriageObservationsModelCopyWith(
          _$_PostTriageObservationsModel value,
          $Res Function(_$_PostTriageObservationsModel) then) =
      __$$_PostTriageObservationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, String? value, double? score});
}

/// @nodoc
class __$$_PostTriageObservationsModelCopyWithImpl<$Res>
    extends _$PostTriageObservationsModelCopyWithImpl<$Res,
        _$_PostTriageObservationsModel>
    implements _$$_PostTriageObservationsModelCopyWith<$Res> {
  __$$_PostTriageObservationsModelCopyWithImpl(
      _$_PostTriageObservationsModel _value,
      $Res Function(_$_PostTriageObservationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostTriageObservationsModel(
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
class _$_PostTriageObservationsModel implements _PostTriageObservationsModel {
  const _$_PostTriageObservationsModel(
      {this.identifier, this.value, this.score});

  factory _$_PostTriageObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostTriageObservationsModelFromJson(json);

  @override
  final int? identifier;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostTriageObservationsModel(identifier: $identifier, value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostTriageObservationsModel &&
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
  _$$_PostTriageObservationsModelCopyWith<_$_PostTriageObservationsModel>
      get copyWith => __$$_PostTriageObservationsModelCopyWithImpl<
          _$_PostTriageObservationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostTriageObservationsModelToJson(
      this,
    );
  }
}

abstract class _PostTriageObservationsModel
    implements PostTriageObservationsModel {
  const factory _PostTriageObservationsModel(
      {final int? identifier,
      final String? value,
      final double? score}) = _$_PostTriageObservationsModel;

  factory _PostTriageObservationsModel.fromJson(Map<String, dynamic> json) =
      _$_PostTriageObservationsModel.fromJson;

  @override
  int? get identifier;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostTriageObservationsModelCopyWith<_$_PostTriageObservationsModel>
      get copyWith => throw _privateConstructorUsedError;
}

PostTriageImagingSelectionModel _$PostTriageImagingSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _PostTriageImagingSelectionModel.fromJson(json);
}

/// @nodoc
mixin _$PostTriageImagingSelectionModel {
  int? get identifier => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTriageImagingSelectionModelCopyWith<PostTriageImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTriageImagingSelectionModelCopyWith<$Res> {
  factory $PostTriageImagingSelectionModelCopyWith(
          PostTriageImagingSelectionModel value,
          $Res Function(PostTriageImagingSelectionModel) then) =
      _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
          PostTriageImagingSelectionModel>;
  @useResult
  $Res call(
      {int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
        $Val extends PostTriageImagingSelectionModel>
    implements $PostTriageImagingSelectionModelCopyWith<$Res> {
  _$PostTriageImagingSelectionModelCopyWithImpl(this._value, this._then);

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
    Object? fileId = freezed,
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
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostTriageImagingSelectionModelCopyWith<$Res>
    implements $PostTriageImagingSelectionModelCopyWith<$Res> {
  factory _$$_PostTriageImagingSelectionModelCopyWith(
          _$_PostTriageImagingSelectionModel value,
          $Res Function(_$_PostTriageImagingSelectionModel) then) =
      __$$_PostTriageImagingSelectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? identifier,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class __$$_PostTriageImagingSelectionModelCopyWithImpl<$Res>
    extends _$PostTriageImagingSelectionModelCopyWithImpl<$Res,
        _$_PostTriageImagingSelectionModel>
    implements _$$_PostTriageImagingSelectionModelCopyWith<$Res> {
  __$$_PostTriageImagingSelectionModelCopyWithImpl(
      _$_PostTriageImagingSelectionModel _value,
      $Res Function(_$_PostTriageImagingSelectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_$_PostTriageImagingSelectionModel(
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
      fileId: freezed == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostTriageImagingSelectionModel
    implements _PostTriageImagingSelectionModel {
  const _$_PostTriageImagingSelectionModel(
      {this.identifier, this.endpoint, this.baseUrl, this.score, this.fileId});

  factory _$_PostTriageImagingSelectionModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostTriageImagingSelectionModelFromJson(json);

  @override
  final int? identifier;
  @override
  final String? endpoint;
  @override
  final String? baseUrl;
  @override
  final double? score;
  @override
  final String? fileId;

  @override
  String toString() {
    return 'PostTriageImagingSelectionModel(identifier: $identifier, endpoint: $endpoint, baseUrl: $baseUrl, score: $score, fileId: $fileId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostTriageImagingSelectionModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, endpoint, baseUrl, score, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostTriageImagingSelectionModelCopyWith<
          _$_PostTriageImagingSelectionModel>
      get copyWith => __$$_PostTriageImagingSelectionModelCopyWithImpl<
          _$_PostTriageImagingSelectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostTriageImagingSelectionModelToJson(
      this,
    );
  }
}

abstract class _PostTriageImagingSelectionModel
    implements PostTriageImagingSelectionModel {
  const factory _PostTriageImagingSelectionModel(
      {final int? identifier,
      final String? endpoint,
      final String? baseUrl,
      final double? score,
      final String? fileId}) = _$_PostTriageImagingSelectionModel;

  factory _PostTriageImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$_PostTriageImagingSelectionModel.fromJson;

  @override
  int? get identifier;
  @override
  String? get endpoint;
  @override
  String? get baseUrl;
  @override
  double? get score;
  @override
  String? get fileId;
  @override
  @JsonKey(ignore: true)
  _$$_PostTriageImagingSelectionModelCopyWith<
          _$_PostTriageImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}
