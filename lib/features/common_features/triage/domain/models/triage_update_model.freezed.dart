// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TriageUpdateModel _$TriageUpdateModelFromJson(Map<String, dynamic> json) {
  return _TriageUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$TriageUpdateModel {
  int? get patientId => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get tenantCode => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<Performer>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get issued => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;
  String? get sourceVersion => throw _privateConstructorUsedError;
  List<IncompleteTestModel>? get incompleteSection =>
      throw _privateConstructorUsedError;
  int? get cummulativeScore => throw _privateConstructorUsedError;
  List<Map<String, int>>? get score => throw _privateConstructorUsedError;
  List<PatchImagingSelectionModel>? get imagingSelection =>
      throw _privateConstructorUsedError;
  List<PatchObservationsModel>? get observations =>
      throw _privateConstructorUsedError;
  List<PatchQuestionResponseModel>? get questionResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageUpdateModelCopyWith<TriageUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageUpdateModelCopyWith<$Res> {
  factory $TriageUpdateModelCopyWith(
          TriageUpdateModel value, $Res Function(TriageUpdateModel) then) =
      _$TriageUpdateModelCopyWithImpl<$Res, TriageUpdateModel>;
  @useResult
  $Res call(
      {int? patientId,
      int? diagnosticReportId,
      int? tenantCode,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, int>>? score,
      List<PatchImagingSelectionModel>? imagingSelection,
      List<PatchObservationsModel>? observations,
      List<PatchQuestionResponseModel>? questionResponse});
}

/// @nodoc
class _$TriageUpdateModelCopyWithImpl<$Res, $Val extends TriageUpdateModel>
    implements $TriageUpdateModelCopyWith<$Res> {
  _$TriageUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? diagnosticReportId = freezed,
    Object? tenantCode = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
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
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      imagingSelection: freezed == imagingSelection
          ? _value.imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PatchImagingSelectionModel>?,
      observations: freezed == observations
          ? _value.observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PatchObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value.questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PatchQuestionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TriageUpdateModelImplCopyWith<$Res>
    implements $TriageUpdateModelCopyWith<$Res> {
  factory _$$TriageUpdateModelImplCopyWith(_$TriageUpdateModelImpl value,
          $Res Function(_$TriageUpdateModelImpl) then) =
      __$$TriageUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? diagnosticReportId,
      int? tenantCode,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      @TimestampConverter() DateTime? issued,
      Source? source,
      String? sourceVersion,
      List<IncompleteTestModel>? incompleteSection,
      int? cummulativeScore,
      List<Map<String, int>>? score,
      List<PatchImagingSelectionModel>? imagingSelection,
      List<PatchObservationsModel>? observations,
      List<PatchQuestionResponseModel>? questionResponse});
}

/// @nodoc
class __$$TriageUpdateModelImplCopyWithImpl<$Res>
    extends _$TriageUpdateModelCopyWithImpl<$Res, _$TriageUpdateModelImpl>
    implements _$$TriageUpdateModelImplCopyWith<$Res> {
  __$$TriageUpdateModelImplCopyWithImpl(_$TriageUpdateModelImpl _value,
      $Res Function(_$TriageUpdateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? diagnosticReportId = freezed,
    Object? tenantCode = freezed,
    Object? organizationCode = freezed,
    Object? performer = freezed,
    Object? assessmentCode = freezed,
    Object? assessmentVersion = freezed,
    Object? issued = freezed,
    Object? source = freezed,
    Object? sourceVersion = freezed,
    Object? incompleteSection = freezed,
    Object? cummulativeScore = freezed,
    Object? score = freezed,
    Object? imagingSelection = freezed,
    Object? observations = freezed,
    Object? questionResponse = freezed,
  }) {
    return _then(_$TriageUpdateModelImpl(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
              as int?,
      tenantCode: freezed == tenantCode
          ? _value.tenantCode
          : tenantCode // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      score: freezed == score
          ? _value._score
          : score // ignore: cast_nullable_to_non_nullable
              as List<Map<String, int>>?,
      imagingSelection: freezed == imagingSelection
          ? _value._imagingSelection
          : imagingSelection // ignore: cast_nullable_to_non_nullable
              as List<PatchImagingSelectionModel>?,
      observations: freezed == observations
          ? _value._observations
          : observations // ignore: cast_nullable_to_non_nullable
              as List<PatchObservationsModel>?,
      questionResponse: freezed == questionResponse
          ? _value._questionResponse
          : questionResponse // ignore: cast_nullable_to_non_nullable
              as List<PatchQuestionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriageUpdateModelImpl implements _TriageUpdateModel {
  const _$TriageUpdateModelImpl(
      {this.patientId,
      this.diagnosticReportId,
      this.tenantCode,
      this.organizationCode,
      final List<Performer>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      @TimestampConverter() this.issued,
      this.source,
      this.sourceVersion,
      final List<IncompleteTestModel>? incompleteSection,
      this.cummulativeScore,
      final List<Map<String, int>>? score,
      final List<PatchImagingSelectionModel>? imagingSelection,
      final List<PatchObservationsModel>? observations,
      final List<PatchQuestionResponseModel>? questionResponse})
      : _performer = performer,
        _incompleteSection = incompleteSection,
        _score = score,
        _imagingSelection = imagingSelection,
        _observations = observations,
        _questionResponse = questionResponse;

  factory _$TriageUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriageUpdateModelImplFromJson(json);

  @override
  final int? patientId;
  @override
  final int? diagnosticReportId;
  @override
  final int? tenantCode;
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
  final int? cummulativeScore;
  final List<Map<String, int>>? _score;
  @override
  List<Map<String, int>>? get score {
    final value = _score;
    if (value == null) return null;
    if (_score is EqualUnmodifiableListView) return _score;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PatchImagingSelectionModel>? _imagingSelection;
  @override
  List<PatchImagingSelectionModel>? get imagingSelection {
    final value = _imagingSelection;
    if (value == null) return null;
    if (_imagingSelection is EqualUnmodifiableListView)
      return _imagingSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PatchObservationsModel>? _observations;
  @override
  List<PatchObservationsModel>? get observations {
    final value = _observations;
    if (value == null) return null;
    if (_observations is EqualUnmodifiableListView) return _observations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PatchQuestionResponseModel>? _questionResponse;
  @override
  List<PatchQuestionResponseModel>? get questionResponse {
    final value = _questionResponse;
    if (value == null) return null;
    if (_questionResponse is EqualUnmodifiableListView)
      return _questionResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageUpdateModel(patientId: $patientId, diagnosticReportId: $diagnosticReportId, tenantCode: $tenantCode, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriageUpdateModelImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.diagnosticReportId, diagnosticReportId) ||
                other.diagnosticReportId == diagnosticReportId) &&
            (identical(other.tenantCode, tenantCode) ||
                other.tenantCode == tenantCode) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            (identical(other.assessmentCode, assessmentCode) ||
                other.assessmentCode == assessmentCode) &&
            (identical(other.assessmentVersion, assessmentVersion) ||
                other.assessmentVersion == assessmentVersion) &&
            (identical(other.issued, issued) || other.issued == issued) &&
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
      diagnosticReportId,
      tenantCode,
      organizationCode,
      const DeepCollectionEquality().hash(_performer),
      assessmentCode,
      assessmentVersion,
      issued,
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
  _$$TriageUpdateModelImplCopyWith<_$TriageUpdateModelImpl> get copyWith =>
      __$$TriageUpdateModelImplCopyWithImpl<_$TriageUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriageUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _TriageUpdateModel implements TriageUpdateModel {
  const factory _TriageUpdateModel(
          {final int? patientId,
          final int? diagnosticReportId,
          final int? tenantCode,
          final int? organizationCode,
          final List<Performer>? performer,
          final int? assessmentCode,
          final String? assessmentVersion,
          @TimestampConverter() final DateTime? issued,
          final Source? source,
          final String? sourceVersion,
          final List<IncompleteTestModel>? incompleteSection,
          final int? cummulativeScore,
          final List<Map<String, int>>? score,
          final List<PatchImagingSelectionModel>? imagingSelection,
          final List<PatchObservationsModel>? observations,
          final List<PatchQuestionResponseModel>? questionResponse}) =
      _$TriageUpdateModelImpl;

  factory _TriageUpdateModel.fromJson(Map<String, dynamic> json) =
      _$TriageUpdateModelImpl.fromJson;

  @override
  int? get patientId;
  @override
  int? get diagnosticReportId;
  @override
  int? get tenantCode;
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
  Source? get source;
  @override
  String? get sourceVersion;
  @override
  List<IncompleteTestModel>? get incompleteSection;
  @override
  int? get cummulativeScore;
  @override
  List<Map<String, int>>? get score;
  @override
  List<PatchImagingSelectionModel>? get imagingSelection;
  @override
  List<PatchObservationsModel>? get observations;
  @override
  List<PatchQuestionResponseModel>? get questionResponse;
  @override
  @JsonKey(ignore: true)
  _$$TriageUpdateModelImplCopyWith<_$TriageUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatchQuestionResponseModel _$PatchQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PatchQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PatchQuestionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  Action? get action => throw _privateConstructorUsedError;
  int? get linkId => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  List<PatchAnswerModel>? get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchQuestionResponseModelCopyWith<PatchQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchQuestionResponseModelCopyWith<$Res> {
  factory $PatchQuestionResponseModelCopyWith(PatchQuestionResponseModel value,
          $Res Function(PatchQuestionResponseModel) then) =
      _$PatchQuestionResponseModelCopyWithImpl<$Res,
          PatchQuestionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      Action? action,
      int? linkId,
      double? score,
      List<PatchAnswerModel>? answers});
}

/// @nodoc
class _$PatchQuestionResponseModelCopyWithImpl<$Res,
        $Val extends PatchQuestionResponseModel>
    implements $PatchQuestionResponseModelCopyWith<$Res> {
  _$PatchQuestionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
              as List<PatchAnswerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchQuestionResponseModelImplCopyWith<$Res>
    implements $PatchQuestionResponseModelCopyWith<$Res> {
  factory _$$PatchQuestionResponseModelImplCopyWith(
          _$PatchQuestionResponseModelImpl value,
          $Res Function(_$PatchQuestionResponseModelImpl) then) =
      __$$PatchQuestionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Action? action,
      int? linkId,
      double? score,
      List<PatchAnswerModel>? answers});
}

/// @nodoc
class __$$PatchQuestionResponseModelImplCopyWithImpl<$Res>
    extends _$PatchQuestionResponseModelCopyWithImpl<$Res,
        _$PatchQuestionResponseModelImpl>
    implements _$$PatchQuestionResponseModelImplCopyWith<$Res> {
  __$$PatchQuestionResponseModelImplCopyWithImpl(
      _$PatchQuestionResponseModelImpl _value,
      $Res Function(_$PatchQuestionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? linkId = freezed,
    Object? score = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$PatchQuestionResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
              as List<PatchAnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchQuestionResponseModelImpl implements _PatchQuestionResponseModel {
  const _$PatchQuestionResponseModelImpl(
      {this.id,
      this.action,
      this.linkId,
      this.score,
      final List<PatchAnswerModel>? answers})
      : _answers = answers;

  factory _$PatchQuestionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatchQuestionResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final Action? action;
  @override
  final int? linkId;
  @override
  final double? score;
  final List<PatchAnswerModel>? _answers;
  @override
  List<PatchAnswerModel>? get answers {
    final value = _answers;
    if (value == null) return null;
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PatchQuestionResponseModel(id: $id, action: $action, linkId: $linkId, score: $score, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchQuestionResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.linkId, linkId) || other.linkId == linkId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, action, linkId, score,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchQuestionResponseModelImplCopyWith<_$PatchQuestionResponseModelImpl>
      get copyWith => __$$PatchQuestionResponseModelImplCopyWithImpl<
          _$PatchQuestionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchQuestionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PatchQuestionResponseModel
    implements PatchQuestionResponseModel {
  const factory _PatchQuestionResponseModel(
          {final int? id,
          final Action? action,
          final int? linkId,
          final double? score,
          final List<PatchAnswerModel>? answers}) =
      _$PatchQuestionResponseModelImpl;

  factory _PatchQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$PatchQuestionResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  Action? get action;
  @override
  int? get linkId;
  @override
  double? get score;
  @override
  List<PatchAnswerModel>? get answers;
  @override
  @JsonKey(ignore: true)
  _$$PatchQuestionResponseModelImplCopyWith<_$PatchQuestionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatchAnswerModel _$PatchAnswerModelFromJson(Map<String, dynamic> json) {
  return _PatchAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$PatchAnswerModel {
  int? get id => throw _privateConstructorUsedError;
  Action? get action => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  int? get answerCode => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchAnswerModelCopyWith<PatchAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchAnswerModelCopyWith<$Res> {
  factory $PatchAnswerModelCopyWith(
          PatchAnswerModel value, $Res Function(PatchAnswerModel) then) =
      _$PatchAnswerModelCopyWithImpl<$Res, PatchAnswerModel>;
  @useResult
  $Res call(
      {int? id, Action? action, String? value, int? answerCode, double? score});
}

/// @nodoc
class _$PatchAnswerModelCopyWithImpl<$Res, $Val extends PatchAnswerModel>
    implements $PatchAnswerModelCopyWith<$Res> {
  _$PatchAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
abstract class _$$PatchAnswerModelImplCopyWith<$Res>
    implements $PatchAnswerModelCopyWith<$Res> {
  factory _$$PatchAnswerModelImplCopyWith(_$PatchAnswerModelImpl value,
          $Res Function(_$PatchAnswerModelImpl) then) =
      __$$PatchAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, Action? action, String? value, int? answerCode, double? score});
}

/// @nodoc
class __$$PatchAnswerModelImplCopyWithImpl<$Res>
    extends _$PatchAnswerModelCopyWithImpl<$Res, _$PatchAnswerModelImpl>
    implements _$$PatchAnswerModelImplCopyWith<$Res> {
  __$$PatchAnswerModelImplCopyWithImpl(_$PatchAnswerModelImpl _value,
      $Res Function(_$PatchAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? answerCode = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PatchAnswerModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
class _$PatchAnswerModelImpl implements _PatchAnswerModel {
  const _$PatchAnswerModelImpl(
      {this.id, this.action, this.value, this.answerCode, this.score});

  factory _$PatchAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchAnswerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final Action? action;
  @override
  final String? value;
  @override
  final int? answerCode;
  @override
  final double? score;

  @override
  String toString() {
    return 'PatchAnswerModel(id: $id, action: $action, value: $value, answerCode: $answerCode, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchAnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.answerCode, answerCode) ||
                other.answerCode == answerCode) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, action, value, answerCode, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchAnswerModelImplCopyWith<_$PatchAnswerModelImpl> get copyWith =>
      __$$PatchAnswerModelImplCopyWithImpl<_$PatchAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _PatchAnswerModel implements PatchAnswerModel {
  const factory _PatchAnswerModel(
      {final int? id,
      final Action? action,
      final String? value,
      final int? answerCode,
      final double? score}) = _$PatchAnswerModelImpl;

  factory _PatchAnswerModel.fromJson(Map<String, dynamic> json) =
      _$PatchAnswerModelImpl.fromJson;

  @override
  int? get id;
  @override
  Action? get action;
  @override
  String? get value;
  @override
  int? get answerCode;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$PatchAnswerModelImplCopyWith<_$PatchAnswerModelImpl> get copyWith =>
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
abstract class _$$PerformerImplCopyWith<$Res>
    implements $PerformerCopyWith<$Res> {
  factory _$$PerformerImplCopyWith(
          _$PerformerImpl value, $Res Function(_$PerformerImpl) then) =
      __$$PerformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$PerformerImplCopyWithImpl<$Res>
    extends _$PerformerCopyWithImpl<$Res, _$PerformerImpl>
    implements _$$PerformerImplCopyWith<$Res> {
  __$$PerformerImplCopyWithImpl(
      _$PerformerImpl _value, $Res Function(_$PerformerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$PerformerImpl(
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
class _$PerformerImpl implements _Performer {
  const _$PerformerImpl({this.role, this.identifier});

  factory _$PerformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PerformerImplFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'Performer(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformerImpl &&
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
  _$$PerformerImplCopyWith<_$PerformerImpl> get copyWith =>
      __$$PerformerImplCopyWithImpl<_$PerformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerformerImplToJson(
      this,
    );
  }
}

abstract class _Performer implements Performer {
  const factory _Performer({final PerformerRole? role, final int? identifier}) =
      _$PerformerImpl;

  factory _Performer.fromJson(Map<String, dynamic> json) =
      _$PerformerImpl.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$PerformerImplCopyWith<_$PerformerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IncompleteTestModel _$IncompleteTestModelFromJson(Map<String, dynamic> json) {
  return _IncompleteTestModel.fromJson(json);
}

/// @nodoc
mixin _$IncompleteTestModel {
  TestType? get testName => throw _privateConstructorUsedError;

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
  $Res call({TestType? testName});
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
abstract class _$$IncompleteTestModelImplCopyWith<$Res>
    implements $IncompleteTestModelCopyWith<$Res> {
  factory _$$IncompleteTestModelImplCopyWith(_$IncompleteTestModelImpl value,
          $Res Function(_$IncompleteTestModelImpl) then) =
      __$$IncompleteTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestType? testName});
}

/// @nodoc
class __$$IncompleteTestModelImplCopyWithImpl<$Res>
    extends _$IncompleteTestModelCopyWithImpl<$Res, _$IncompleteTestModelImpl>
    implements _$$IncompleteTestModelImplCopyWith<$Res> {
  __$$IncompleteTestModelImplCopyWithImpl(_$IncompleteTestModelImpl _value,
      $Res Function(_$IncompleteTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testName = freezed,
  }) {
    return _then(_$IncompleteTestModelImpl(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncompleteTestModelImpl implements _IncompleteTestModel {
  const _$IncompleteTestModelImpl({this.testName});

  factory _$IncompleteTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncompleteTestModelImplFromJson(json);

  @override
  final TestType? testName;

  @override
  String toString() {
    return 'IncompleteTestModel(testName: $testName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncompleteTestModelImpl &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, testName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncompleteTestModelImplCopyWith<_$IncompleteTestModelImpl> get copyWith =>
      __$$IncompleteTestModelImplCopyWithImpl<_$IncompleteTestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncompleteTestModelImplToJson(
      this,
    );
  }
}

abstract class _IncompleteTestModel implements IncompleteTestModel {
  const factory _IncompleteTestModel({final TestType? testName}) =
      _$IncompleteTestModelImpl;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$IncompleteTestModelImpl.fromJson;

  @override
  TestType? get testName;
  @override
  @JsonKey(ignore: true)
  _$$IncompleteTestModelImplCopyWith<_$IncompleteTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatchObservationsModel _$PatchObservationsModelFromJson(
    Map<String, dynamic> json) {
  return _PatchObservationsModel.fromJson(json);
}

/// @nodoc
mixin _$PatchObservationsModel {
  int? get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  Action? get action => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchObservationsModelCopyWith<PatchObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchObservationsModelCopyWith<$Res> {
  factory $PatchObservationsModelCopyWith(PatchObservationsModel value,
          $Res Function(PatchObservationsModel) then) =
      _$PatchObservationsModelCopyWithImpl<$Res, PatchObservationsModel>;
  @useResult
  $Res call(
      {int? id, int? identifier, Action? action, String? value, double? score});
}

/// @nodoc
class _$PatchObservationsModelCopyWithImpl<$Res,
        $Val extends PatchObservationsModel>
    implements $PatchObservationsModelCopyWith<$Res> {
  _$PatchObservationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
abstract class _$$PatchObservationsModelImplCopyWith<$Res>
    implements $PatchObservationsModelCopyWith<$Res> {
  factory _$$PatchObservationsModelImplCopyWith(
          _$PatchObservationsModelImpl value,
          $Res Function(_$PatchObservationsModelImpl) then) =
      __$$PatchObservationsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int? identifier, Action? action, String? value, double? score});
}

/// @nodoc
class __$$PatchObservationsModelImplCopyWithImpl<$Res>
    extends _$PatchObservationsModelCopyWithImpl<$Res,
        _$PatchObservationsModelImpl>
    implements _$$PatchObservationsModelImplCopyWith<$Res> {
  __$$PatchObservationsModelImplCopyWithImpl(
      _$PatchObservationsModelImpl _value,
      $Res Function(_$PatchObservationsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? action = freezed,
    Object? value = freezed,
    Object? score = freezed,
  }) {
    return _then(_$PatchObservationsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
class _$PatchObservationsModelImpl implements _PatchObservationsModel {
  const _$PatchObservationsModelImpl(
      {this.id, this.identifier, this.action, this.value, this.score});

  factory _$PatchObservationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchObservationsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? identifier;
  @override
  final Action? action;
  @override
  final String? value;
  @override
  final double? score;

  @override
  String toString() {
    return 'PatchObservationsModel(id: $id, identifier: $identifier, action: $action, value: $value, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchObservationsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, identifier, action, value, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchObservationsModelImplCopyWith<_$PatchObservationsModelImpl>
      get copyWith => __$$PatchObservationsModelImplCopyWithImpl<
          _$PatchObservationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchObservationsModelImplToJson(
      this,
    );
  }
}

abstract class _PatchObservationsModel implements PatchObservationsModel {
  const factory _PatchObservationsModel(
      {final int? id,
      final int? identifier,
      final Action? action,
      final String? value,
      final double? score}) = _$PatchObservationsModelImpl;

  factory _PatchObservationsModel.fromJson(Map<String, dynamic> json) =
      _$PatchObservationsModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get identifier;
  @override
  Action? get action;
  @override
  String? get value;
  @override
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$PatchObservationsModelImplCopyWith<_$PatchObservationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatchImagingSelectionModel _$PatchImagingSelectionModelFromJson(
    Map<String, dynamic> json) {
  return _PatchImagingSelectionModel.fromJson(json);
}

/// @nodoc
mixin _$PatchImagingSelectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;
  Action? get action => throw _privateConstructorUsedError;
  String? get endpoint => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get fileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchImagingSelectionModelCopyWith<PatchImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchImagingSelectionModelCopyWith<$Res> {
  factory $PatchImagingSelectionModelCopyWith(PatchImagingSelectionModel value,
          $Res Function(PatchImagingSelectionModel) then) =
      _$PatchImagingSelectionModelCopyWithImpl<$Res,
          PatchImagingSelectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      Action? action,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class _$PatchImagingSelectionModelCopyWithImpl<$Res,
        $Val extends PatchImagingSelectionModel>
    implements $PatchImagingSelectionModelCopyWith<$Res> {
  _$PatchImagingSelectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? action = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
abstract class _$$PatchImagingSelectionModelImplCopyWith<$Res>
    implements $PatchImagingSelectionModelCopyWith<$Res> {
  factory _$$PatchImagingSelectionModelImplCopyWith(
          _$PatchImagingSelectionModelImpl value,
          $Res Function(_$PatchImagingSelectionModelImpl) then) =
      __$$PatchImagingSelectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      Action? action,
      String? endpoint,
      String? baseUrl,
      double? score,
      String? fileId});
}

/// @nodoc
class __$$PatchImagingSelectionModelImplCopyWithImpl<$Res>
    extends _$PatchImagingSelectionModelCopyWithImpl<$Res,
        _$PatchImagingSelectionModelImpl>
    implements _$$PatchImagingSelectionModelImplCopyWith<$Res> {
  __$$PatchImagingSelectionModelImplCopyWithImpl(
      _$PatchImagingSelectionModelImpl _value,
      $Res Function(_$PatchImagingSelectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? identifier = freezed,
    Object? action = freezed,
    Object? endpoint = freezed,
    Object? baseUrl = freezed,
    Object? score = freezed,
    Object? fileId = freezed,
  }) {
    return _then(_$PatchImagingSelectionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as Action?,
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
class _$PatchImagingSelectionModelImpl implements _PatchImagingSelectionModel {
  const _$PatchImagingSelectionModelImpl(
      {this.id,
      this.identifier,
      this.action,
      this.endpoint,
      this.baseUrl,
      this.score,
      this.fileId});

  factory _$PatchImagingSelectionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatchImagingSelectionModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? identifier;
  @override
  final Action? action;
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
    return 'PatchImagingSelectionModel(id: $id, identifier: $identifier, action: $action, endpoint: $endpoint, baseUrl: $baseUrl, score: $score, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchImagingSelectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, action, endpoint, baseUrl, score, fileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchImagingSelectionModelImplCopyWith<_$PatchImagingSelectionModelImpl>
      get copyWith => __$$PatchImagingSelectionModelImplCopyWithImpl<
          _$PatchImagingSelectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchImagingSelectionModelImplToJson(
      this,
    );
  }
}

abstract class _PatchImagingSelectionModel
    implements PatchImagingSelectionModel {
  const factory _PatchImagingSelectionModel(
      {final int? id,
      final int? identifier,
      final Action? action,
      final String? endpoint,
      final String? baseUrl,
      final double? score,
      final String? fileId}) = _$PatchImagingSelectionModelImpl;

  factory _PatchImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$PatchImagingSelectionModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get identifier;
  @override
  Action? get action;
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
  _$$PatchImagingSelectionModelImplCopyWith<_$PatchImagingSelectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
