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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageUpdateModel _$TriageUpdateModelFromJson(Map<String, dynamic> json) {
  return _TriageUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$TriageUpdateModel {
  int? get patientId => throw _privateConstructorUsedError;
  int? get diagnosticReportId => throw _privateConstructorUsedError;
  int? get organizationCode => throw _privateConstructorUsedError;
  List<Performer>? get performer => throw _privateConstructorUsedError;
  int? get assessmentCode => throw _privateConstructorUsedError;
  String? get assessmentVersion => throw _privateConstructorUsedError;
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
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      DateTime? issued,
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
abstract class _$$_TriageUpdateModelCopyWith<$Res>
    implements $TriageUpdateModelCopyWith<$Res> {
  factory _$$_TriageUpdateModelCopyWith(_$_TriageUpdateModel value,
          $Res Function(_$_TriageUpdateModel) then) =
      __$$_TriageUpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      int? diagnosticReportId,
      int? organizationCode,
      List<Performer>? performer,
      int? assessmentCode,
      String? assessmentVersion,
      DateTime? issued,
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
class __$$_TriageUpdateModelCopyWithImpl<$Res>
    extends _$TriageUpdateModelCopyWithImpl<$Res, _$_TriageUpdateModel>
    implements _$$_TriageUpdateModelCopyWith<$Res> {
  __$$_TriageUpdateModelCopyWithImpl(
      _$_TriageUpdateModel _value, $Res Function(_$_TriageUpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? diagnosticReportId = freezed,
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
    return _then(_$_TriageUpdateModel(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      diagnosticReportId: freezed == diagnosticReportId
          ? _value.diagnosticReportId
          : diagnosticReportId // ignore: cast_nullable_to_non_nullable
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
class _$_TriageUpdateModel implements _TriageUpdateModel {
  const _$_TriageUpdateModel(
      {this.patientId,
      this.diagnosticReportId,
      this.organizationCode,
      final List<Performer>? performer,
      this.assessmentCode,
      this.assessmentVersion,
      this.issued,
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

  factory _$_TriageUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriageUpdateModelFromJson(json);

  @override
  final int? patientId;
  @override
  final int? diagnosticReportId;
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
    return 'TriageUpdateModel(patientId: $patientId, diagnosticReportId: $diagnosticReportId, organizationCode: $organizationCode, performer: $performer, assessmentCode: $assessmentCode, assessmentVersion: $assessmentVersion, issued: $issued, source: $source, sourceVersion: $sourceVersion, incompleteSection: $incompleteSection, cummulativeScore: $cummulativeScore, score: $score, imagingSelection: $imagingSelection, observations: $observations, questionResponse: $questionResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageUpdateModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.diagnosticReportId, diagnosticReportId) ||
                other.diagnosticReportId == diagnosticReportId) &&
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
  _$$_TriageUpdateModelCopyWith<_$_TriageUpdateModel> get copyWith =>
      __$$_TriageUpdateModelCopyWithImpl<_$_TriageUpdateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageUpdateModelToJson(
      this,
    );
  }
}

abstract class _TriageUpdateModel implements TriageUpdateModel {
  const factory _TriageUpdateModel(
          {final int? patientId,
          final int? diagnosticReportId,
          final int? organizationCode,
          final List<Performer>? performer,
          final int? assessmentCode,
          final String? assessmentVersion,
          final DateTime? issued,
          final Source? source,
          final String? sourceVersion,
          final List<IncompleteTestModel>? incompleteSection,
          final int? cummulativeScore,
          final List<Map<String, int>>? score,
          final List<PatchImagingSelectionModel>? imagingSelection,
          final List<PatchObservationsModel>? observations,
          final List<PatchQuestionResponseModel>? questionResponse}) =
      _$_TriageUpdateModel;

  factory _TriageUpdateModel.fromJson(Map<String, dynamic> json) =
      _$_TriageUpdateModel.fromJson;

  @override
  int? get patientId;
  @override
  int? get diagnosticReportId;
  @override
  int? get organizationCode;
  @override
  List<Performer>? get performer;
  @override
  int? get assessmentCode;
  @override
  String? get assessmentVersion;
  @override
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
  _$$_TriageUpdateModelCopyWith<_$_TriageUpdateModel> get copyWith =>
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
abstract class _$$_PatchQuestionResponseModelCopyWith<$Res>
    implements $PatchQuestionResponseModelCopyWith<$Res> {
  factory _$$_PatchQuestionResponseModelCopyWith(
          _$_PatchQuestionResponseModel value,
          $Res Function(_$_PatchQuestionResponseModel) then) =
      __$$_PatchQuestionResponseModelCopyWithImpl<$Res>;
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
class __$$_PatchQuestionResponseModelCopyWithImpl<$Res>
    extends _$PatchQuestionResponseModelCopyWithImpl<$Res,
        _$_PatchQuestionResponseModel>
    implements _$$_PatchQuestionResponseModelCopyWith<$Res> {
  __$$_PatchQuestionResponseModelCopyWithImpl(
      _$_PatchQuestionResponseModel _value,
      $Res Function(_$_PatchQuestionResponseModel) _then)
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
    return _then(_$_PatchQuestionResponseModel(
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
class _$_PatchQuestionResponseModel implements _PatchQuestionResponseModel {
  const _$_PatchQuestionResponseModel(
      {this.id,
      this.action,
      this.linkId,
      this.score,
      final List<PatchAnswerModel>? answers})
      : _answers = answers;

  factory _$_PatchQuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatchQuestionResponseModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchQuestionResponseModel &&
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
  _$$_PatchQuestionResponseModelCopyWith<_$_PatchQuestionResponseModel>
      get copyWith => __$$_PatchQuestionResponseModelCopyWithImpl<
          _$_PatchQuestionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchQuestionResponseModelToJson(
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
      final List<PatchAnswerModel>? answers}) = _$_PatchQuestionResponseModel;

  factory _PatchQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PatchQuestionResponseModel.fromJson;

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
  _$$_PatchQuestionResponseModelCopyWith<_$_PatchQuestionResponseModel>
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
abstract class _$$_PatchAnswerModelCopyWith<$Res>
    implements $PatchAnswerModelCopyWith<$Res> {
  factory _$$_PatchAnswerModelCopyWith(
          _$_PatchAnswerModel value, $Res Function(_$_PatchAnswerModel) then) =
      __$$_PatchAnswerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, Action? action, String? value, int? answerCode, double? score});
}

/// @nodoc
class __$$_PatchAnswerModelCopyWithImpl<$Res>
    extends _$PatchAnswerModelCopyWithImpl<$Res, _$_PatchAnswerModel>
    implements _$$_PatchAnswerModelCopyWith<$Res> {
  __$$_PatchAnswerModelCopyWithImpl(
      _$_PatchAnswerModel _value, $Res Function(_$_PatchAnswerModel) _then)
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
    return _then(_$_PatchAnswerModel(
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
class _$_PatchAnswerModel implements _PatchAnswerModel {
  const _$_PatchAnswerModel(
      {this.id, this.action, this.value, this.answerCode, this.score});

  factory _$_PatchAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatchAnswerModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchAnswerModel &&
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
  _$$_PatchAnswerModelCopyWith<_$_PatchAnswerModel> get copyWith =>
      __$$_PatchAnswerModelCopyWithImpl<_$_PatchAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchAnswerModelToJson(
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
      final double? score}) = _$_PatchAnswerModel;

  factory _PatchAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_PatchAnswerModel.fromJson;

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
  _$$_PatchAnswerModelCopyWith<_$_PatchAnswerModel> get copyWith =>
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
abstract class _$$_IncompleteTestModelCopyWith<$Res>
    implements $IncompleteTestModelCopyWith<$Res> {
  factory _$$_IncompleteTestModelCopyWith(_$_IncompleteTestModel value,
          $Res Function(_$_IncompleteTestModel) then) =
      __$$_IncompleteTestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TestType? testName});
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
    Object? testName = freezed,
  }) {
    return _then(_$_IncompleteTestModel(
      testName: freezed == testName
          ? _value.testName
          : testName // ignore: cast_nullable_to_non_nullable
              as TestType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncompleteTestModel implements _IncompleteTestModel {
  const _$_IncompleteTestModel({this.testName});

  factory _$_IncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$$_IncompleteTestModelFromJson(json);

  @override
  final TestType? testName;

  @override
  String toString() {
    return 'IncompleteTestModel(testName: $testName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncompleteTestModel &&
            (identical(other.testName, testName) ||
                other.testName == testName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, testName);

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
  const factory _IncompleteTestModel({final TestType? testName}) =
      _$_IncompleteTestModel;

  factory _IncompleteTestModel.fromJson(Map<String, dynamic> json) =
      _$_IncompleteTestModel.fromJson;

  @override
  TestType? get testName;
  @override
  @JsonKey(ignore: true)
  _$$_IncompleteTestModelCopyWith<_$_IncompleteTestModel> get copyWith =>
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
abstract class _$$_PatchObservationsModelCopyWith<$Res>
    implements $PatchObservationsModelCopyWith<$Res> {
  factory _$$_PatchObservationsModelCopyWith(_$_PatchObservationsModel value,
          $Res Function(_$_PatchObservationsModel) then) =
      __$$_PatchObservationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, int? identifier, Action? action, String? value, double? score});
}

/// @nodoc
class __$$_PatchObservationsModelCopyWithImpl<$Res>
    extends _$PatchObservationsModelCopyWithImpl<$Res,
        _$_PatchObservationsModel>
    implements _$$_PatchObservationsModelCopyWith<$Res> {
  __$$_PatchObservationsModelCopyWithImpl(_$_PatchObservationsModel _value,
      $Res Function(_$_PatchObservationsModel) _then)
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
    return _then(_$_PatchObservationsModel(
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
class _$_PatchObservationsModel implements _PatchObservationsModel {
  const _$_PatchObservationsModel(
      {this.id, this.identifier, this.action, this.value, this.score});

  factory _$_PatchObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatchObservationsModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchObservationsModel &&
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
  _$$_PatchObservationsModelCopyWith<_$_PatchObservationsModel> get copyWith =>
      __$$_PatchObservationsModelCopyWithImpl<_$_PatchObservationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchObservationsModelToJson(
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
      final double? score}) = _$_PatchObservationsModel;

  factory _PatchObservationsModel.fromJson(Map<String, dynamic> json) =
      _$_PatchObservationsModel.fromJson;

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
  _$$_PatchObservationsModelCopyWith<_$_PatchObservationsModel> get copyWith =>
      throw _privateConstructorUsedError;
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
      double? score});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatchImagingSelectionModelCopyWith<$Res>
    implements $PatchImagingSelectionModelCopyWith<$Res> {
  factory _$$_PatchImagingSelectionModelCopyWith(
          _$_PatchImagingSelectionModel value,
          $Res Function(_$_PatchImagingSelectionModel) then) =
      __$$_PatchImagingSelectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? identifier,
      Action? action,
      String? endpoint,
      String? baseUrl,
      double? score});
}

/// @nodoc
class __$$_PatchImagingSelectionModelCopyWithImpl<$Res>
    extends _$PatchImagingSelectionModelCopyWithImpl<$Res,
        _$_PatchImagingSelectionModel>
    implements _$$_PatchImagingSelectionModelCopyWith<$Res> {
  __$$_PatchImagingSelectionModelCopyWithImpl(
      _$_PatchImagingSelectionModel _value,
      $Res Function(_$_PatchImagingSelectionModel) _then)
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
  }) {
    return _then(_$_PatchImagingSelectionModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatchImagingSelectionModel implements _PatchImagingSelectionModel {
  const _$_PatchImagingSelectionModel(
      {this.id,
      this.identifier,
      this.action,
      this.endpoint,
      this.baseUrl,
      this.score});

  factory _$_PatchImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_PatchImagingSelectionModelFromJson(json);

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
  String toString() {
    return 'PatchImagingSelectionModel(id: $id, identifier: $identifier, action: $action, endpoint: $endpoint, baseUrl: $baseUrl, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PatchImagingSelectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, identifier, action, endpoint, baseUrl, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchImagingSelectionModelCopyWith<_$_PatchImagingSelectionModel>
      get copyWith => __$$_PatchImagingSelectionModelCopyWithImpl<
          _$_PatchImagingSelectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchImagingSelectionModelToJson(
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
      final double? score}) = _$_PatchImagingSelectionModel;

  factory _PatchImagingSelectionModel.fromJson(Map<String, dynamic> json) =
      _$_PatchImagingSelectionModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_PatchImagingSelectionModelCopyWith<_$_PatchImagingSelectionModel>
      get copyWith => throw _privateConstructorUsedError;
}
