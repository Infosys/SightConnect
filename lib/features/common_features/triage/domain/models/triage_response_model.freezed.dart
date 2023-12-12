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
  Map<TriageStep, double>? get score => throw _privateConstructorUsedError;
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
      Map<TriageStep, double>? score,
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
              as Map<TriageStep, double>?,
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
      Map<TriageStep, double>? score,
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
              as Map<TriageStep, double>?,
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
      final Map<TriageStep, double>? score,
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
  final Map<TriageStep, double>? _score;
  @override
  Map<TriageStep, double>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableMapView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
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
          final Map<TriageStep, double>? score,
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
  Map<TriageStep, double>? get score;
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

PostQuestionResponseModel _$PostQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostQuestionResponseModel {
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PostAnswerModel>? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostQuestionResponseModelCopyWith<PostQuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQuestionResponseModelCopyWith<$Res> {
  factory $PostQuestionResponseModelCopyWith(PostQuestionResponseModel value,
          $Res Function(PostQuestionResponseModel) then) =
      _$PostQuestionResponseModelCopyWithImpl<$Res, PostQuestionResponseModel>;
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answer});
}

/// @nodoc
class _$PostQuestionResponseModelCopyWithImpl<$Res,
        $Val extends PostQuestionResponseModel>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  _$PostQuestionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answer = freezed,
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
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostQuestionResponseModelCopyWith<$Res>
    implements $PostQuestionResponseModelCopyWith<$Res> {
  factory _$$_PostQuestionResponseModelCopyWith(
          _$_PostQuestionResponseModel value,
          $Res Function(_$_PostQuestionResponseModel) then) =
      __$$_PostQuestionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? linkId, double? score, List<PostAnswerModel>? answer});
}

/// @nodoc
class __$$_PostQuestionResponseModelCopyWithImpl<$Res>
    extends _$PostQuestionResponseModelCopyWithImpl<$Res,
        _$_PostQuestionResponseModel>
    implements _$$_PostQuestionResponseModelCopyWith<$Res> {
  __$$_PostQuestionResponseModelCopyWithImpl(
      _$_PostQuestionResponseModel _value,
      $Res Function(_$_PostQuestionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$_PostQuestionResponseModel(
      linkId: freezed == linkId
          ? _value.linkId
          : linkId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      answer: freezed == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<PostAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostQuestionResponseModel implements _PostQuestionResponseModel {
  const _$_PostQuestionResponseModel(
      {this.linkId, this.score, final List<PostAnswerModel>? answer})
      : _answer = answer;

  factory _$_PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostQuestionResponseModelFromJson(json);

  @override
  final int? linkId;
  @override
  final double? score;
  final List<PostAnswerModel>? _answer;
  @override
  List<PostAnswerModel>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostQuestionResponseModel(linkId: $linkId, score: $score, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostQuestionResponseModel &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, linkId, score, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostQuestionResponseModelCopyWith<_$_PostQuestionResponseModel>
      get copyWith => __$$_PostQuestionResponseModelCopyWithImpl<
          _$_PostQuestionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostQuestionResponseModelToJson(
      this,
    );
  }
}

abstract class _PostQuestionResponseModel implements PostQuestionResponseModel {
  const factory _PostQuestionResponseModel(
      {final int? linkId,
      final double? score,
      final List<PostAnswerModel>? answer}) = _$_PostQuestionResponseModel;

  factory _PostQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PostQuestionResponseModel.fromJson;

  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PostAnswerModel>? get answer;
  @override
  @JsonKey(ignore: true)
  _$$_PostQuestionResponseModelCopyWith<_$_PostQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

PostAnswerModel _$PostAnswerModelFromJson(Map<String, dynamic> json) {
  return _PostAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PostAnswerModel {
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostAnswerModelCopyWith<PostAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostAnswerModelCopyWith<$Res> {
  factory $PostAnswerModelCopyWith(
          PostAnswerModel value, $Res Function(PostAnswerModel) then) =
      _$PostAnswerModelCopyWithImpl<$Res, PostAnswerModel>;
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class _$PostAnswerModelCopyWithImpl<$Res, $Val extends PostAnswerModel>
    implements $PostAnswerModelCopyWith<$Res> {
  _$PostAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_PostAnswerModelCopyWith<$Res>
    implements $PostAnswerModelCopyWith<$Res> {
  factory _$$_PostAnswerModelCopyWith(
          _$_PostAnswerModel value, $Res Function(_$_PostAnswerModel) then) =
      __$$_PostAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, double? score});
}

/// @nodoc
class __$$_PostAnswerModelCopyWithImpl<$Res>
    extends _$PostAnswerModelCopyWithImpl<$Res, _$_PostAnswerModel>
    implements _$$_PostAnswerModelCopyWith<$Res> {
  __$$_PostAnswerModelCopyWithImpl(
      _$_PostAnswerModel _value, $Res Function(_$_PostAnswerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$_PostAnswerModel(
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
class _$_PostAnswerModel implements _PostAnswerModel {
  const _$_PostAnswerModel({this.value, this.score});

  factory _$_PostAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostAnswerModelFromJson(json);

  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PostAnswerModel(value: $value, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostAnswerModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostAnswerModelCopyWith<_$_PostAnswerModel> get copyWith =>
      __$$_PostAnswerModelCopyWithImpl<_$_PostAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostAnswerModelToJson(
      this,
    );
  }
}

abstract class _PostAnswerModel implements PostAnswerModel {
  const factory _PostAnswerModel({final String? value, final double? score}) =
      _$_PostAnswerModel;

  factory _PostAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_PostAnswerModel.fromJson;

  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$_PostAnswerModelCopyWith<_$_PostAnswerModel> get copyWith =>
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
