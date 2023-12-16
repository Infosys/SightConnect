// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triage_assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TriageAssessmentModel _$TriageAssessmentModelFromJson(
    Map<String, dynamic> json) {
  return _TriageAssessmentModel.fromJson(json);
}

/// @nodoc
mixin _$TriageAssessmentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get organizationCode => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  AssessmentType? get assessmentType => throw _privateConstructorUsedError;
  Organ? get organ => throw _privateConstructorUsedError;
  List<QuestionnaireSectionsResponseModel>?
      get questionnaireSectionsResponseDTOList =>
          throw _privateConstructorUsedError;
  List<MediaListSectionResponseModel>? get mediaListSectionResponseDTOList =>
      throw _privateConstructorUsedError;
  List<ObservationSetSectionResponseModel>?
      get observationSetSectionResponseDTOList =>
          throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriageAssessmentModelCopyWith<TriageAssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriageAssessmentModelCopyWith<$Res> {
  factory $TriageAssessmentModelCopyWith(TriageAssessmentModel value,
          $Res Function(TriageAssessmentModel) then) =
      _$TriageAssessmentModelCopyWithImpl<$Res, TriageAssessmentModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? organizationCode,
      Condition? condition,
      AssessmentType? assessmentType,
      Organ? organ,
      List<QuestionnaireSectionsResponseModel>?
          questionnaireSectionsResponseDTOList,
      List<MediaListSectionResponseModel>? mediaListSectionResponseDTOList,
      List<ObservationSetSectionResponseModel>?
          observationSetSectionResponseDTOList});
}

/// @nodoc
class _$TriageAssessmentModelCopyWithImpl<$Res,
        $Val extends TriageAssessmentModel>
    implements $TriageAssessmentModelCopyWith<$Res> {
  _$TriageAssessmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? assessmentType = freezed,
    Object? organ = freezed,
    Object? questionnaireSectionsResponseDTOList = freezed,
    Object? mediaListSectionResponseDTOList = freezed,
    Object? observationSetSectionResponseDTOList = freezed,
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
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as AssessmentType?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as Organ?,
      questionnaireSectionsResponseDTOList: freezed ==
              questionnaireSectionsResponseDTOList
          ? _value.questionnaireSectionsResponseDTOList
          : questionnaireSectionsResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireSectionsResponseModel>?,
      mediaListSectionResponseDTOList: freezed ==
              mediaListSectionResponseDTOList
          ? _value.mediaListSectionResponseDTOList
          : mediaListSectionResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListSectionResponseModel>?,
      observationSetSectionResponseDTOList: freezed ==
              observationSetSectionResponseDTOList
          ? _value.observationSetSectionResponseDTOList
          : observationSetSectionResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetSectionResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TriageAssessmentModelCopyWith<$Res>
    implements $TriageAssessmentModelCopyWith<$Res> {
  factory _$$_TriageAssessmentModelCopyWith(_$_TriageAssessmentModel value,
          $Res Function(_$_TriageAssessmentModel) then) =
      __$$_TriageAssessmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? organizationCode,
      Condition? condition,
      AssessmentType? assessmentType,
      Organ? organ,
      List<QuestionnaireSectionsResponseModel>?
          questionnaireSectionsResponseDTOList,
      List<MediaListSectionResponseModel>? mediaListSectionResponseDTOList,
      List<ObservationSetSectionResponseModel>?
          observationSetSectionResponseDTOList});
}

/// @nodoc
class __$$_TriageAssessmentModelCopyWithImpl<$Res>
    extends _$TriageAssessmentModelCopyWithImpl<$Res, _$_TriageAssessmentModel>
    implements _$$_TriageAssessmentModelCopyWith<$Res> {
  __$$_TriageAssessmentModelCopyWithImpl(_$_TriageAssessmentModel _value,
      $Res Function(_$_TriageAssessmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? assessmentType = freezed,
    Object? organ = freezed,
    Object? questionnaireSectionsResponseDTOList = freezed,
    Object? mediaListSectionResponseDTOList = freezed,
    Object? observationSetSectionResponseDTOList = freezed,
  }) {
    return _then(_$_TriageAssessmentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as AssessmentType?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as Organ?,
      questionnaireSectionsResponseDTOList: freezed ==
              questionnaireSectionsResponseDTOList
          ? _value._questionnaireSectionsResponseDTOList
          : questionnaireSectionsResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireSectionsResponseModel>?,
      mediaListSectionResponseDTOList: freezed ==
              mediaListSectionResponseDTOList
          ? _value._mediaListSectionResponseDTOList
          : mediaListSectionResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListSectionResponseModel>?,
      observationSetSectionResponseDTOList: freezed ==
              observationSetSectionResponseDTOList
          ? _value._observationSetSectionResponseDTOList
          : observationSetSectionResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetSectionResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TriageAssessmentModel implements _TriageAssessmentModel {
  const _$_TriageAssessmentModel(
      {this.id,
      this.name,
      this.organizationCode,
      this.condition,
      this.assessmentType,
      this.organ,
      final List<QuestionnaireSectionsResponseModel>?
          questionnaireSectionsResponseDTOList,
      final List<MediaListSectionResponseModel>?
          mediaListSectionResponseDTOList,
      final List<ObservationSetSectionResponseModel>?
          observationSetSectionResponseDTOList})
      : _questionnaireSectionsResponseDTOList =
            questionnaireSectionsResponseDTOList,
        _mediaListSectionResponseDTOList = mediaListSectionResponseDTOList,
        _observationSetSectionResponseDTOList =
            observationSetSectionResponseDTOList;

  factory _$_TriageAssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_TriageAssessmentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? organizationCode;
  @override
  final Condition? condition;
  @override
  final AssessmentType? assessmentType;
  @override
  final Organ? organ;
  final List<QuestionnaireSectionsResponseModel>?
      _questionnaireSectionsResponseDTOList;
  @override
  List<QuestionnaireSectionsResponseModel>?
      get questionnaireSectionsResponseDTOList {
    final value = _questionnaireSectionsResponseDTOList;
    if (value == null) return null;
    if (_questionnaireSectionsResponseDTOList is EqualUnmodifiableListView)
      return _questionnaireSectionsResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaListSectionResponseModel>? _mediaListSectionResponseDTOList;
  @override
  List<MediaListSectionResponseModel>? get mediaListSectionResponseDTOList {
    final value = _mediaListSectionResponseDTOList;
    if (value == null) return null;
    if (_mediaListSectionResponseDTOList is EqualUnmodifiableListView)
      return _mediaListSectionResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ObservationSetSectionResponseModel>?
      _observationSetSectionResponseDTOList;
  @override
  List<ObservationSetSectionResponseModel>?
      get observationSetSectionResponseDTOList {
    final value = _observationSetSectionResponseDTOList;
    if (value == null) return null;
    if (_observationSetSectionResponseDTOList is EqualUnmodifiableListView)
      return _observationSetSectionResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TriageAssessmentModel(id: $id, name: $name, organizationCode: $organizationCode, condition: $condition, assessmentType: $assessmentType, organ: $organ, questionnaireSectionsResponseDTOList: $questionnaireSectionsResponseDTOList, mediaListSectionResponseDTOList: $mediaListSectionResponseDTOList, observationSetSectionResponseDTOList: $observationSetSectionResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TriageAssessmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.assessmentType, assessmentType) ||
                other.assessmentType == assessmentType) &&
            (identical(other.organ, organ) || other.organ == organ) &&
            const DeepCollectionEquality().equals(
                other._questionnaireSectionsResponseDTOList,
                _questionnaireSectionsResponseDTOList) &&
            const DeepCollectionEquality().equals(
                other._mediaListSectionResponseDTOList,
                _mediaListSectionResponseDTOList) &&
            const DeepCollectionEquality().equals(
                other._observationSetSectionResponseDTOList,
                _observationSetSectionResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      organizationCode,
      condition,
      assessmentType,
      organ,
      const DeepCollectionEquality()
          .hash(_questionnaireSectionsResponseDTOList),
      const DeepCollectionEquality().hash(_mediaListSectionResponseDTOList),
      const DeepCollectionEquality()
          .hash(_observationSetSectionResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TriageAssessmentModelCopyWith<_$_TriageAssessmentModel> get copyWith =>
      __$$_TriageAssessmentModelCopyWithImpl<_$_TriageAssessmentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TriageAssessmentModelToJson(
      this,
    );
  }
}

abstract class _TriageAssessmentModel implements TriageAssessmentModel {
  const factory _TriageAssessmentModel(
      {final int? id,
      final String? name,
      final String? organizationCode,
      final Condition? condition,
      final AssessmentType? assessmentType,
      final Organ? organ,
      final List<QuestionnaireSectionsResponseModel>?
          questionnaireSectionsResponseDTOList,
      final List<MediaListSectionResponseModel>?
          mediaListSectionResponseDTOList,
      final List<ObservationSetSectionResponseModel>?
          observationSetSectionResponseDTOList}) = _$_TriageAssessmentModel;

  factory _TriageAssessmentModel.fromJson(Map<String, dynamic> json) =
      _$_TriageAssessmentModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get organizationCode;
  @override
  Condition? get condition;
  @override
  AssessmentType? get assessmentType;
  @override
  Organ? get organ;
  @override
  List<QuestionnaireSectionsResponseModel>?
      get questionnaireSectionsResponseDTOList;
  @override
  List<MediaListSectionResponseModel>? get mediaListSectionResponseDTOList;
  @override
  List<ObservationSetSectionResponseModel>?
      get observationSetSectionResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_TriageAssessmentModelCopyWith<_$_TriageAssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireSectionsResponseModel _$QuestionnaireSectionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireSectionsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireSectionsResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  QuestionnaireSectionModel? get supersection =>
      throw _privateConstructorUsedError;
  List<QuestionnaireResponseModel>? get questionnaireResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireSectionsResponseModelCopyWith<
          QuestionnaireSectionsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSectionsResponseModelCopyWith<$Res> {
  factory $QuestionnaireSectionsResponseModelCopyWith(
          QuestionnaireSectionsResponseModel value,
          $Res Function(QuestionnaireSectionsResponseModel) then) =
      _$QuestionnaireSectionsResponseModelCopyWithImpl<$Res,
          QuestionnaireSectionsResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      QuestionnaireSectionModel? supersection,
      List<QuestionnaireResponseModel>? questionnaireResponseDTOList});

  $QuestionnaireSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class _$QuestionnaireSectionsResponseModelCopyWithImpl<$Res,
        $Val extends QuestionnaireSectionsResponseModel>
    implements $QuestionnaireSectionsResponseModelCopyWith<$Res> {
  _$QuestionnaireSectionsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? questionnaireResponseDTOList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSectionModel?,
      questionnaireResponseDTOList: freezed == questionnaireResponseDTOList
          ? _value.questionnaireResponseDTOList
          : questionnaireResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireSectionModelCopyWith<$Res>? get supersection {
    if (_value.supersection == null) {
      return null;
    }

    return $QuestionnaireSectionModelCopyWith<$Res>(_value.supersection!,
        (value) {
      return _then(_value.copyWith(supersection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireSectionsResponseModelCopyWith<$Res>
    implements $QuestionnaireSectionsResponseModelCopyWith<$Res> {
  factory _$$_QuestionnaireSectionsResponseModelCopyWith(
          _$_QuestionnaireSectionsResponseModel value,
          $Res Function(_$_QuestionnaireSectionsResponseModel) then) =
      __$$_QuestionnaireSectionsResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      QuestionnaireSectionModel? supersection,
      List<QuestionnaireResponseModel>? questionnaireResponseDTOList});

  @override
  $QuestionnaireSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class __$$_QuestionnaireSectionsResponseModelCopyWithImpl<$Res>
    extends _$QuestionnaireSectionsResponseModelCopyWithImpl<$Res,
        _$_QuestionnaireSectionsResponseModel>
    implements _$$_QuestionnaireSectionsResponseModelCopyWith<$Res> {
  __$$_QuestionnaireSectionsResponseModelCopyWithImpl(
      _$_QuestionnaireSectionsResponseModel _value,
      $Res Function(_$_QuestionnaireSectionsResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? questionnaireResponseDTOList = freezed,
  }) {
    return _then(_$_QuestionnaireSectionsResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSectionModel?,
      questionnaireResponseDTOList: freezed == questionnaireResponseDTOList
          ? _value._questionnaireResponseDTOList
          : questionnaireResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<QuestionnaireResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireSectionsResponseModel
    implements _QuestionnaireSectionsResponseModel {
  const _$_QuestionnaireSectionsResponseModel(
      {this.id,
      this.index,
      this.description,
      this.supersection,
      final List<QuestionnaireResponseModel>? questionnaireResponseDTOList})
      : _questionnaireResponseDTOList = questionnaireResponseDTOList;

  factory _$_QuestionnaireSectionsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_QuestionnaireSectionsResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final QuestionnaireSectionModel? supersection;
  final List<QuestionnaireResponseModel>? _questionnaireResponseDTOList;
  @override
  List<QuestionnaireResponseModel>? get questionnaireResponseDTOList {
    final value = _questionnaireResponseDTOList;
    if (value == null) return null;
    if (_questionnaireResponseDTOList is EqualUnmodifiableListView)
      return _questionnaireResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionnaireSectionsResponseModel(id: $id, index: $index, description: $description, supersection: $supersection, questionnaireResponseDTOList: $questionnaireResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireSectionsResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.supersection, supersection) ||
                other.supersection == supersection) &&
            const DeepCollectionEquality().equals(
                other._questionnaireResponseDTOList,
                _questionnaireResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      supersection,
      const DeepCollectionEquality().hash(_questionnaireResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireSectionsResponseModelCopyWith<
          _$_QuestionnaireSectionsResponseModel>
      get copyWith => __$$_QuestionnaireSectionsResponseModelCopyWithImpl<
          _$_QuestionnaireSectionsResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireSectionsResponseModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireSectionsResponseModel
    implements QuestionnaireSectionsResponseModel {
  const factory _QuestionnaireSectionsResponseModel(
          {final int? id,
          final int? index,
          final String? description,
          final QuestionnaireSectionModel? supersection,
          final List<QuestionnaireResponseModel>?
              questionnaireResponseDTOList}) =
      _$_QuestionnaireSectionsResponseModel;

  factory _QuestionnaireSectionsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_QuestionnaireSectionsResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  QuestionnaireSectionModel? get supersection;
  @override
  List<QuestionnaireResponseModel>? get questionnaireResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireSectionsResponseModelCopyWith<
          _$_QuestionnaireSectionsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionnaireSectionModel _$QuestionnaireSectionModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireSectionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireSectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  QuestionnaireModel? get questionnaire => throw _privateConstructorUsedError;
  AssessmentModel? get assessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireSectionModelCopyWith<QuestionnaireSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSectionModelCopyWith<$Res> {
  factory $QuestionnaireSectionModelCopyWith(QuestionnaireSectionModel value,
          $Res Function(QuestionnaireSectionModel) then) =
      _$QuestionnaireSectionModelCopyWithImpl<$Res, QuestionnaireSectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      QuestionnaireModel? questionnaire,
      AssessmentModel? assessment});

  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class _$QuestionnaireSectionModelCopyWithImpl<$Res,
        $Val extends QuestionnaireSectionModel>
    implements $QuestionnaireSectionModelCopyWith<$Res> {
  _$QuestionnaireSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? questionnaire = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res>? get questionnaire {
    if (_value.questionnaire == null) {
      return null;
    }

    return $QuestionnaireModelCopyWith<$Res>(_value.questionnaire!, (value) {
      return _then(_value.copyWith(questionnaire: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentModelCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $AssessmentModelCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionnaireSectionModelCopyWith<$Res>
    implements $QuestionnaireSectionModelCopyWith<$Res> {
  factory _$$_QuestionnaireSectionModelCopyWith(
          _$_QuestionnaireSectionModel value,
          $Res Function(_$_QuestionnaireSectionModel) then) =
      __$$_QuestionnaireSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      QuestionnaireModel? questionnaire,
      AssessmentModel? assessment});

  @override
  $QuestionnaireModelCopyWith<$Res>? get questionnaire;
  @override
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class __$$_QuestionnaireSectionModelCopyWithImpl<$Res>
    extends _$QuestionnaireSectionModelCopyWithImpl<$Res,
        _$_QuestionnaireSectionModel>
    implements _$$_QuestionnaireSectionModelCopyWith<$Res> {
  __$$_QuestionnaireSectionModelCopyWithImpl(
      _$_QuestionnaireSectionModel _value,
      $Res Function(_$_QuestionnaireSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? questionnaire = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_$_QuestionnaireSectionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaire: freezed == questionnaire
          ? _value.questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireSectionModel implements _QuestionnaireSectionModel {
  const _$_QuestionnaireSectionModel(
      {this.id,
      this.index,
      this.description,
      this.questionnaire,
      this.assessment});

  factory _$_QuestionnaireSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireSectionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final QuestionnaireModel? questionnaire;
  @override
  final AssessmentModel? assessment;

  @override
  String toString() {
    return 'QuestionnaireSectionModel(id: $id, index: $index, description: $description, questionnaire: $questionnaire, assessment: $assessment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.questionnaire, questionnaire) ||
                other.questionnaire == questionnaire) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, index, description, questionnaire, assessment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireSectionModelCopyWith<_$_QuestionnaireSectionModel>
      get copyWith => __$$_QuestionnaireSectionModelCopyWithImpl<
          _$_QuestionnaireSectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireSectionModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireSectionModel implements QuestionnaireSectionModel {
  const factory _QuestionnaireSectionModel(
      {final int? id,
      final int? index,
      final String? description,
      final QuestionnaireModel? questionnaire,
      final AssessmentModel? assessment}) = _$_QuestionnaireSectionModel;

  factory _QuestionnaireSectionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireSectionModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  QuestionnaireModel? get questionnaire;
  @override
  AssessmentModel? get assessment;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionnaireSectionModelCopyWith<_$_QuestionnaireSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

AssessmentModel _$AssessmentModelFromJson(Map<String, dynamic> json) {
  return _AssessmentModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get organizationCode => throw _privateConstructorUsedError;
  Condition? get condition => throw _privateConstructorUsedError;
  AssessmentType? get assessmentType => throw _privateConstructorUsedError;
  Organ? get organ => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentModelCopyWith<AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentModelCopyWith<$Res> {
  factory $AssessmentModelCopyWith(
          AssessmentModel value, $Res Function(AssessmentModel) then) =
      _$AssessmentModelCopyWithImpl<$Res, AssessmentModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? organizationCode,
      Condition? condition,
      AssessmentType? assessmentType,
      Organ? organ,
      String? version});
}

/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res, $Val extends AssessmentModel>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? assessmentType = freezed,
    Object? organ = freezed,
    Object? version = freezed,
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
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as AssessmentType?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as Organ?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssessmentModelCopyWith<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  factory _$$_AssessmentModelCopyWith(
          _$_AssessmentModel value, $Res Function(_$_AssessmentModel) then) =
      __$$_AssessmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? organizationCode,
      Condition? condition,
      AssessmentType? assessmentType,
      Organ? organ,
      String? version});
}

/// @nodoc
class __$$_AssessmentModelCopyWithImpl<$Res>
    extends _$AssessmentModelCopyWithImpl<$Res, _$_AssessmentModel>
    implements _$$_AssessmentModelCopyWith<$Res> {
  __$$_AssessmentModelCopyWithImpl(
      _$_AssessmentModel _value, $Res Function(_$_AssessmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? organizationCode = freezed,
    Object? condition = freezed,
    Object? assessmentType = freezed,
    Object? organ = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_AssessmentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationCode: freezed == organizationCode
          ? _value.organizationCode
          : organizationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Condition?,
      assessmentType: freezed == assessmentType
          ? _value.assessmentType
          : assessmentType // ignore: cast_nullable_to_non_nullable
              as AssessmentType?,
      organ: freezed == organ
          ? _value.organ
          : organ // ignore: cast_nullable_to_non_nullable
              as Organ?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentModel implements _AssessmentModel {
  const _$_AssessmentModel(
      {this.id,
      this.name,
      this.organizationCode,
      this.condition,
      this.assessmentType,
      this.organ,
      this.version});

  factory _$_AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? organizationCode;
  @override
  final Condition? condition;
  @override
  final AssessmentType? assessmentType;
  @override
  final Organ? organ;
  @override
  final String? version;

  @override
  String toString() {
    return 'AssessmentModel(id: $id, name: $name, organizationCode: $organizationCode, condition: $condition, assessmentType: $assessmentType, organ: $organ, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organizationCode, organizationCode) ||
                other.organizationCode == organizationCode) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.assessmentType, assessmentType) ||
                other.assessmentType == assessmentType) &&
            (identical(other.organ, organ) || other.organ == organ) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, organizationCode,
      condition, assessmentType, organ, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssessmentModelCopyWith<_$_AssessmentModel> get copyWith =>
      __$$_AssessmentModelCopyWithImpl<_$_AssessmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentModelToJson(
      this,
    );
  }
}

abstract class _AssessmentModel implements AssessmentModel {
  const factory _AssessmentModel(
      {final int? id,
      final String? name,
      final String? organizationCode,
      final Condition? condition,
      final AssessmentType? assessmentType,
      final Organ? organ,
      final String? version}) = _$_AssessmentModel;

  factory _AssessmentModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get organizationCode;
  @override
  Condition? get condition;
  @override
  AssessmentType? get assessmentType;
  @override
  Organ? get organ;
  @override
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$_AssessmentModelCopyWith<_$_AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
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
      String? publisherType});
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionnaireModelCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$_QuestionnaireModelCopyWith(_$_QuestionnaireModel value,
          $Res Function(_$_QuestionnaireModel) then) =
      __$$_QuestionnaireModelCopyWithImpl<$Res>;
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
      String? publisherType});
}

/// @nodoc
class __$$_QuestionnaireModelCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$_QuestionnaireModel>
    implements _$$_QuestionnaireModelCopyWith<$Res> {
  __$$_QuestionnaireModelCopyWithImpl(
      _$_QuestionnaireModel _value, $Res Function(_$_QuestionnaireModel) _then)
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
  }) {
    return _then(_$_QuestionnaireModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionnaireModel implements _QuestionnaireModel {
  const _$_QuestionnaireModel(
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
      this.publisherType});

  factory _$_QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionnaireModelFromJson(json);

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

  @override
  String toString() {
    return 'QuestionnaireModel(id: $id, name: $name, description: $description, version: $version, approvalDate: $approvalDate, lastReviewDate: $lastReviewDate, effectiveFrom: $effectiveFrom, effectiveTill: $effectiveTill, creationDate: $creationDate, lastModifiedDate: $lastModifiedDate, publisherCode: $publisherCode, publisherType: $publisherType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionnaireModel &&
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
                other.publisherType == publisherType));
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
      publisherType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionnaireModelCopyWith<_$_QuestionnaireModel> get copyWith =>
      __$$_QuestionnaireModelCopyWithImpl<_$_QuestionnaireModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionnaireModelToJson(
      this,
    );
  }
}

abstract class _QuestionnaireModel implements QuestionnaireModel {
  const factory _QuestionnaireModel(
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
      final String? publisherType}) = _$_QuestionnaireModel;

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionnaireModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_QuestionnaireModelCopyWith<_$_QuestionnaireModel> get copyWith =>
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

MediaListSectionResponseModel _$MediaListSectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListSectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListSectionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaListSectionModel? get supersection => throw _privateConstructorUsedError;
  List<MediaListResponseModel>? get mediaListResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListSectionResponseModelCopyWith<MediaListSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListSectionResponseModelCopyWith<$Res> {
  factory $MediaListSectionResponseModelCopyWith(
          MediaListSectionResponseModel value,
          $Res Function(MediaListSectionResponseModel) then) =
      _$MediaListSectionResponseModelCopyWithImpl<$Res,
          MediaListSectionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListSectionModel? supersection,
      List<MediaListResponseModel>? mediaListResponseDTOList});

  $MediaListSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class _$MediaListSectionResponseModelCopyWithImpl<$Res,
        $Val extends MediaListSectionResponseModel>
    implements $MediaListSectionResponseModelCopyWith<$Res> {
  _$MediaListSectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? mediaListResponseDTOList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as MediaListSectionModel?,
      mediaListResponseDTOList: freezed == mediaListResponseDTOList
          ? _value.mediaListResponseDTOList
          : mediaListResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaListSectionModelCopyWith<$Res>? get supersection {
    if (_value.supersection == null) {
      return null;
    }

    return $MediaListSectionModelCopyWith<$Res>(_value.supersection!, (value) {
      return _then(_value.copyWith(supersection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaListSectionResponseModelCopyWith<$Res>
    implements $MediaListSectionResponseModelCopyWith<$Res> {
  factory _$$_MediaListSectionResponseModelCopyWith(
          _$_MediaListSectionResponseModel value,
          $Res Function(_$_MediaListSectionResponseModel) then) =
      __$$_MediaListSectionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListSectionModel? supersection,
      List<MediaListResponseModel>? mediaListResponseDTOList});

  @override
  $MediaListSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class __$$_MediaListSectionResponseModelCopyWithImpl<$Res>
    extends _$MediaListSectionResponseModelCopyWithImpl<$Res,
        _$_MediaListSectionResponseModel>
    implements _$$_MediaListSectionResponseModelCopyWith<$Res> {
  __$$_MediaListSectionResponseModelCopyWithImpl(
      _$_MediaListSectionResponseModel _value,
      $Res Function(_$_MediaListSectionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? mediaListResponseDTOList = freezed,
  }) {
    return _then(_$_MediaListSectionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as MediaListSectionModel?,
      mediaListResponseDTOList: freezed == mediaListResponseDTOList
          ? _value._mediaListResponseDTOList
          : mediaListResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListSectionResponseModel
    implements _MediaListSectionResponseModel {
  const _$_MediaListSectionResponseModel(
      {this.id,
      this.index,
      this.description,
      this.supersection,
      final List<MediaListResponseModel>? mediaListResponseDTOList})
      : _mediaListResponseDTOList = mediaListResponseDTOList;

  factory _$_MediaListSectionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_MediaListSectionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final MediaListSectionModel? supersection;
  final List<MediaListResponseModel>? _mediaListResponseDTOList;
  @override
  List<MediaListResponseModel>? get mediaListResponseDTOList {
    final value = _mediaListResponseDTOList;
    if (value == null) return null;
    if (_mediaListResponseDTOList is EqualUnmodifiableListView)
      return _mediaListResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaListSectionResponseModel(id: $id, index: $index, description: $description, supersection: $supersection, mediaListResponseDTOList: $mediaListResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListSectionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.supersection, supersection) ||
                other.supersection == supersection) &&
            const DeepCollectionEquality().equals(
                other._mediaListResponseDTOList, _mediaListResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      supersection,
      const DeepCollectionEquality().hash(_mediaListResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListSectionResponseModelCopyWith<_$_MediaListSectionResponseModel>
      get copyWith => __$$_MediaListSectionResponseModelCopyWithImpl<
          _$_MediaListSectionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListSectionResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaListSectionResponseModel
    implements MediaListSectionResponseModel {
  const factory _MediaListSectionResponseModel(
          {final int? id,
          final int? index,
          final String? description,
          final MediaListSectionModel? supersection,
          final List<MediaListResponseModel>? mediaListResponseDTOList}) =
      _$_MediaListSectionResponseModel;

  factory _MediaListSectionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListSectionResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  MediaListSectionModel? get supersection;
  @override
  List<MediaListResponseModel>? get mediaListResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListSectionResponseModelCopyWith<_$_MediaListSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

MediaListResponseModel _$MediaListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  List<MediaResponseModel>? get mediaResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListResponseModelCopyWith<MediaListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListResponseModelCopyWith<$Res> {
  factory $MediaListResponseModelCopyWith(MediaListResponseModel value,
          $Res Function(MediaListResponseModel) then) =
      _$MediaListResponseModelCopyWithImpl<$Res, MediaListResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      List<MediaResponseModel>? mediaResponseDTOList});
}

/// @nodoc
class _$MediaListResponseModelCopyWithImpl<$Res,
        $Val extends MediaListResponseModel>
    implements $MediaListResponseModelCopyWith<$Res> {
  _$MediaListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? mediaResponseDTOList = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaResponseDTOList: freezed == mediaResponseDTOList
          ? _value.mediaResponseDTOList
          : mediaResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaListResponseModelCopyWith<$Res>
    implements $MediaListResponseModelCopyWith<$Res> {
  factory _$$_MediaListResponseModelCopyWith(_$_MediaListResponseModel value,
          $Res Function(_$_MediaListResponseModel) then) =
      __$$_MediaListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      List<MediaResponseModel>? mediaResponseDTOList});
}

/// @nodoc
class __$$_MediaListResponseModelCopyWithImpl<$Res>
    extends _$MediaListResponseModelCopyWithImpl<$Res,
        _$_MediaListResponseModel>
    implements _$$_MediaListResponseModelCopyWith<$Res> {
  __$$_MediaListResponseModelCopyWithImpl(_$_MediaListResponseModel _value,
      $Res Function(_$_MediaListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? mediaResponseDTOList = freezed,
  }) {
    return _then(_$_MediaListResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaResponseDTOList: freezed == mediaResponseDTOList
          ? _value._mediaResponseDTOList
          : mediaResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListResponseModel implements _MediaListResponseModel {
  const _$_MediaListResponseModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate,
      final List<MediaResponseModel>? mediaResponseDTOList})
      : _mediaResponseDTOList = mediaResponseDTOList;

  factory _$_MediaListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  final List<MediaResponseModel>? _mediaResponseDTOList;
  @override
  List<MediaResponseModel>? get mediaResponseDTOList {
    final value = _mediaResponseDTOList;
    if (value == null) return null;
    if (_mediaResponseDTOList is EqualUnmodifiableListView)
      return _mediaResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaListResponseModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate, mediaResponseDTOList: $mediaResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            const DeepCollectionEquality()
                .equals(other._mediaResponseDTOList, _mediaResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, version, description,
      creationDate, const DeepCollectionEquality().hash(_mediaResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListResponseModelCopyWith<_$_MediaListResponseModel> get copyWith =>
      __$$_MediaListResponseModelCopyWithImpl<_$_MediaListResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaListResponseModel implements MediaListResponseModel {
  const factory _MediaListResponseModel(
          {final int? id,
          final String? name,
          final String? version,
          final String? description,
          @TimestampConverter() final DateTime? creationDate,
          final List<MediaResponseModel>? mediaResponseDTOList}) =
      _$_MediaListResponseModel;

  factory _MediaListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  List<MediaResponseModel>? get mediaResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListResponseModelCopyWith<_$_MediaListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaResponseModel _$MediaResponseModelFromJson(Map<String, dynamic> json) {
  return _MediaResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaType? get type => throw _privateConstructorUsedError;
  int? get maxSize => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaResponseModelCopyWith<MediaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResponseModelCopyWith<$Res> {
  factory $MediaResponseModelCopyWith(
          MediaResponseModel value, $Res Function(MediaResponseModel) then) =
      _$MediaResponseModelCopyWithImpl<$Res, MediaResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      String? fileType});
}

/// @nodoc
class _$MediaResponseModelCopyWithImpl<$Res, $Val extends MediaResponseModel>
    implements $MediaResponseModelCopyWith<$Res> {
  _$MediaResponseModelCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaResponseModelCopyWith<$Res>
    implements $MediaResponseModelCopyWith<$Res> {
  factory _$$_MediaResponseModelCopyWith(_$_MediaResponseModel value,
          $Res Function(_$_MediaResponseModel) then) =
      __$$_MediaResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      String? fileType});
}

/// @nodoc
class __$$_MediaResponseModelCopyWithImpl<$Res>
    extends _$MediaResponseModelCopyWithImpl<$Res, _$_MediaResponseModel>
    implements _$$_MediaResponseModelCopyWith<$Res> {
  __$$_MediaResponseModelCopyWithImpl(
      _$_MediaResponseModel _value, $Res Function(_$_MediaResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
  }) {
    return _then(_$_MediaResponseModel(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaResponseModel implements _MediaResponseModel {
  const _$_MediaResponseModel(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.maxSize,
      this.fileType});

  factory _$_MediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final MediaType? type;
  @override
  final int? maxSize;
  @override
  final String? fileType;

  @override
  String toString() {
    return 'MediaResponseModel(id: $id, name: $name, description: $description, type: $type, maxSize: $maxSize, fileType: $fileType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, type, maxSize, fileType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaResponseModelCopyWith<_$_MediaResponseModel> get copyWith =>
      __$$_MediaResponseModelCopyWithImpl<_$_MediaResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaResponseModel implements MediaResponseModel {
  const factory _MediaResponseModel(
      {final int? id,
      final String? name,
      final String? description,
      final MediaType? type,
      final int? maxSize,
      final String? fileType}) = _$_MediaResponseModel;

  factory _MediaResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  MediaType? get type;
  @override
  int? get maxSize;
  @override
  String? get fileType;
  @override
  @JsonKey(ignore: true)
  _$$_MediaResponseModelCopyWith<_$_MediaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ObservationSetSectionResponseModel _$ObservationSetSectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetSectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetSectionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ObservationSetResponseModel>? get observationSetResponseDTOList =>
      throw _privateConstructorUsedError;
  ObservationSetSectionModel? get supersection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetSectionResponseModelCopyWith<
          ObservationSetSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetSectionResponseModelCopyWith<$Res> {
  factory $ObservationSetSectionResponseModelCopyWith(
          ObservationSetSectionResponseModel value,
          $Res Function(ObservationSetSectionResponseModel) then) =
      _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
          ObservationSetSectionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      List<ObservationSetResponseModel>? observationSetResponseDTOList,
      ObservationSetSectionModel? supersection});

  $ObservationSetSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
        $Val extends ObservationSetSectionResponseModel>
    implements $ObservationSetSectionResponseModelCopyWith<$Res> {
  _$ObservationSetSectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSetResponseDTOList = freezed,
    Object? supersection = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSetResponseDTOList: freezed == observationSetResponseDTOList
          ? _value.observationSetResponseDTOList
          : observationSetResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetResponseModel>?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as ObservationSetSectionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationSetSectionModelCopyWith<$Res>? get supersection {
    if (_value.supersection == null) {
      return null;
    }

    return $ObservationSetSectionModelCopyWith<$Res>(_value.supersection!,
        (value) {
      return _then(_value.copyWith(supersection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetSectionResponseModelCopyWith<$Res>
    implements $ObservationSetSectionResponseModelCopyWith<$Res> {
  factory _$$_ObservationSetSectionResponseModelCopyWith(
          _$_ObservationSetSectionResponseModel value,
          $Res Function(_$_ObservationSetSectionResponseModel) then) =
      __$$_ObservationSetSectionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      List<ObservationSetResponseModel>? observationSetResponseDTOList,
      ObservationSetSectionModel? supersection});

  @override
  $ObservationSetSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class __$$_ObservationSetSectionResponseModelCopyWithImpl<$Res>
    extends _$ObservationSetSectionResponseModelCopyWithImpl<$Res,
        _$_ObservationSetSectionResponseModel>
    implements _$$_ObservationSetSectionResponseModelCopyWith<$Res> {
  __$$_ObservationSetSectionResponseModelCopyWithImpl(
      _$_ObservationSetSectionResponseModel _value,
      $Res Function(_$_ObservationSetSectionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSetResponseDTOList = freezed,
    Object? supersection = freezed,
  }) {
    return _then(_$_ObservationSetSectionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSetResponseDTOList: freezed == observationSetResponseDTOList
          ? _value._observationSetResponseDTOList
          : observationSetResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationSetResponseModel>?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as ObservationSetSectionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetSectionResponseModel
    implements _ObservationSetSectionResponseModel {
  const _$_ObservationSetSectionResponseModel(
      {this.id,
      this.index,
      this.description,
      final List<ObservationSetResponseModel>? observationSetResponseDTOList,
      this.supersection})
      : _observationSetResponseDTOList = observationSetResponseDTOList;

  factory _$_ObservationSetSectionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ObservationSetSectionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  final List<ObservationSetResponseModel>? _observationSetResponseDTOList;
  @override
  List<ObservationSetResponseModel>? get observationSetResponseDTOList {
    final value = _observationSetResponseDTOList;
    if (value == null) return null;
    if (_observationSetResponseDTOList is EqualUnmodifiableListView)
      return _observationSetResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ObservationSetSectionModel? supersection;

  @override
  String toString() {
    return 'ObservationSetSectionResponseModel(id: $id, index: $index, description: $description, observationSetResponseDTOList: $observationSetResponseDTOList, supersection: $supersection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetSectionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
                other._observationSetResponseDTOList,
                _observationSetResponseDTOList) &&
            (identical(other.supersection, supersection) ||
                other.supersection == supersection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      const DeepCollectionEquality().hash(_observationSetResponseDTOList),
      supersection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetSectionResponseModelCopyWith<
          _$_ObservationSetSectionResponseModel>
      get copyWith => __$$_ObservationSetSectionResponseModelCopyWithImpl<
          _$_ObservationSetSectionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetSectionResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetSectionResponseModel
    implements ObservationSetSectionResponseModel {
  const factory _ObservationSetSectionResponseModel(
      {final int? id,
      final int? index,
      final String? description,
      final List<ObservationSetResponseModel>? observationSetResponseDTOList,
      final ObservationSetSectionModel?
          supersection}) = _$_ObservationSetSectionResponseModel;

  factory _ObservationSetSectionResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ObservationSetSectionResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  List<ObservationSetResponseModel>? get observationSetResponseDTOList;
  @override
  ObservationSetSectionModel? get supersection;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetSectionResponseModelCopyWith<
          _$_ObservationSetSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationSetResponseModel _$ObservationSetResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  ObservationResponseModel? get observationResponseDTO =>
      throw _privateConstructorUsedError;
  List<ObservationResponseModel>? get observationResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetResponseModelCopyWith<ObservationSetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetResponseModelCopyWith<$Res> {
  factory $ObservationSetResponseModelCopyWith(
          ObservationSetResponseModel value,
          $Res Function(ObservationSetResponseModel) then) =
      _$ObservationSetResponseModelCopyWithImpl<$Res,
          ObservationSetResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      ObservationResponseModel? observationResponseDTO,
      List<ObservationResponseModel>? observationResponseDTOList});

  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO;
}

/// @nodoc
class _$ObservationSetResponseModelCopyWithImpl<$Res,
        $Val extends ObservationSetResponseModel>
    implements $ObservationSetResponseModelCopyWith<$Res> {
  _$ObservationSetResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? observationResponseDTO = freezed,
    Object? observationResponseDTOList = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      observationResponseDTO: freezed == observationResponseDTO
          ? _value.observationResponseDTO
          : observationResponseDTO // ignore: cast_nullable_to_non_nullable
              as ObservationResponseModel?,
      observationResponseDTOList: freezed == observationResponseDTOList
          ? _value.observationResponseDTOList
          : observationResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO {
    if (_value.observationResponseDTO == null) {
      return null;
    }

    return $ObservationResponseModelCopyWith<$Res>(
        _value.observationResponseDTO!, (value) {
      return _then(_value.copyWith(observationResponseDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetResponseModelCopyWith<$Res>
    implements $ObservationSetResponseModelCopyWith<$Res> {
  factory _$$_ObservationSetResponseModelCopyWith(
          _$_ObservationSetResponseModel value,
          $Res Function(_$_ObservationSetResponseModel) then) =
      __$$_ObservationSetResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      ObservationResponseModel? observationResponseDTO,
      List<ObservationResponseModel>? observationResponseDTOList});

  @override
  $ObservationResponseModelCopyWith<$Res>? get observationResponseDTO;
}

/// @nodoc
class __$$_ObservationSetResponseModelCopyWithImpl<$Res>
    extends _$ObservationSetResponseModelCopyWithImpl<$Res,
        _$_ObservationSetResponseModel>
    implements _$$_ObservationSetResponseModelCopyWith<$Res> {
  __$$_ObservationSetResponseModelCopyWithImpl(
      _$_ObservationSetResponseModel _value,
      $Res Function(_$_ObservationSetResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? observationResponseDTO = freezed,
    Object? observationResponseDTOList = freezed,
  }) {
    return _then(_$_ObservationSetResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      observationResponseDTO: freezed == observationResponseDTO
          ? _value.observationResponseDTO
          : observationResponseDTO // ignore: cast_nullable_to_non_nullable
              as ObservationResponseModel?,
      observationResponseDTOList: freezed == observationResponseDTOList
          ? _value._observationResponseDTOList
          : observationResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<ObservationResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetResponseModel implements _ObservationSetResponseModel {
  const _$_ObservationSetResponseModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate,
      this.observationResponseDTO,
      final List<ObservationResponseModel>? observationResponseDTOList})
      : _observationResponseDTOList = observationResponseDTOList;

  factory _$_ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationSetResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  final ObservationResponseModel? observationResponseDTO;
  final List<ObservationResponseModel>? _observationResponseDTOList;
  @override
  List<ObservationResponseModel>? get observationResponseDTOList {
    final value = _observationResponseDTOList;
    if (value == null) return null;
    if (_observationResponseDTOList is EqualUnmodifiableListView)
      return _observationResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ObservationSetResponseModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate, observationResponseDTO: $observationResponseDTO, observationResponseDTOList: $observationResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.observationResponseDTO, observationResponseDTO) ||
                other.observationResponseDTO == observationResponseDTO) &&
            const DeepCollectionEquality().equals(
                other._observationResponseDTOList,
                _observationResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      version,
      description,
      creationDate,
      observationResponseDTO,
      const DeepCollectionEquality().hash(_observationResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetResponseModelCopyWith<_$_ObservationSetResponseModel>
      get copyWith => __$$_ObservationSetResponseModelCopyWithImpl<
          _$_ObservationSetResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetResponseModel
    implements ObservationSetResponseModel {
  const factory _ObservationSetResponseModel(
          {final int? id,
          final String? name,
          final String? version,
          final String? description,
          @TimestampConverter() final DateTime? creationDate,
          final ObservationResponseModel? observationResponseDTO,
          final List<ObservationResponseModel>? observationResponseDTOList}) =
      _$_ObservationSetResponseModel;

  factory _ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationSetResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  ObservationResponseModel? get observationResponseDTO;
  @override
  List<ObservationResponseModel>? get observationResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetResponseModelCopyWith<_$_ObservationSetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationResponseModel _$ObservationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  ValueType? get valueType => throw _privateConstructorUsedError;
  String? get hiThreshold => throw _privateConstructorUsedError;
  String? get loThreshold => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  String? get configs => throw _privateConstructorUsedError;
  double? get weightage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationResponseModelCopyWith<ObservationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationResponseModelCopyWith<$Res> {
  factory $ObservationResponseModelCopyWith(ObservationResponseModel value,
          $Res Function(ObservationResponseModel) then) =
      _$ObservationResponseModelCopyWithImpl<$Res, ObservationResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      ValueType? valueType,
      String? hiThreshold,
      String? loThreshold,
      @TimestampConverter() DateTime? creationDate,
      String? configs,
      double? weightage});
}

/// @nodoc
class _$ObservationResponseModelCopyWithImpl<$Res,
        $Val extends ObservationResponseModel>
    implements $ObservationResponseModelCopyWith<$Res> {
  _$ObservationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? valueType = freezed,
    Object? hiThreshold = freezed,
    Object? loThreshold = freezed,
    Object? creationDate = freezed,
    Object? configs = freezed,
    Object? weightage = freezed,
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
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType?,
      hiThreshold: freezed == hiThreshold
          ? _value.hiThreshold
          : hiThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      loThreshold: freezed == loThreshold
          ? _value.loThreshold
          : loThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as String?,
      weightage: freezed == weightage
          ? _value.weightage
          : weightage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationResponseModelCopyWith<$Res>
    implements $ObservationResponseModelCopyWith<$Res> {
  factory _$$_ObservationResponseModelCopyWith(
          _$_ObservationResponseModel value,
          $Res Function(_$_ObservationResponseModel) then) =
      __$$_ObservationResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      ValueType? valueType,
      String? hiThreshold,
      String? loThreshold,
      @TimestampConverter() DateTime? creationDate,
      String? configs,
      double? weightage});
}

/// @nodoc
class __$$_ObservationResponseModelCopyWithImpl<$Res>
    extends _$ObservationResponseModelCopyWithImpl<$Res,
        _$_ObservationResponseModel>
    implements _$$_ObservationResponseModelCopyWith<$Res> {
  __$$_ObservationResponseModelCopyWithImpl(_$_ObservationResponseModel _value,
      $Res Function(_$_ObservationResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? valueType = freezed,
    Object? hiThreshold = freezed,
    Object? loThreshold = freezed,
    Object? creationDate = freezed,
    Object? configs = freezed,
    Object? weightage = freezed,
  }) {
    return _then(_$_ObservationResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType?,
      hiThreshold: freezed == hiThreshold
          ? _value.hiThreshold
          : hiThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      loThreshold: freezed == loThreshold
          ? _value.loThreshold
          : loThreshold // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      configs: freezed == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as String?,
      weightage: freezed == weightage
          ? _value.weightage
          : weightage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationResponseModel implements _ObservationResponseModel {
  const _$_ObservationResponseModel(
      {this.id,
      this.name,
      this.valueType,
      this.hiThreshold,
      this.loThreshold,
      @TimestampConverter() this.creationDate,
      this.configs,
      this.weightage});

  factory _$_ObservationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final ValueType? valueType;
  @override
  final String? hiThreshold;
  @override
  final String? loThreshold;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  @override
  final String? configs;
  @override
  final double? weightage;

  @override
  String toString() {
    return 'ObservationResponseModel(id: $id, name: $name, valueType: $valueType, hiThreshold: $hiThreshold, loThreshold: $loThreshold, creationDate: $creationDate, configs: $configs, weightage: $weightage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.hiThreshold, hiThreshold) ||
                other.hiThreshold == hiThreshold) &&
            (identical(other.loThreshold, loThreshold) ||
                other.loThreshold == loThreshold) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.configs, configs) || other.configs == configs) &&
            (identical(other.weightage, weightage) ||
                other.weightage == weightage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, valueType, hiThreshold,
      loThreshold, creationDate, configs, weightage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationResponseModelCopyWith<_$_ObservationResponseModel>
      get copyWith => __$$_ObservationResponseModelCopyWithImpl<
          _$_ObservationResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationResponseModelToJson(
      this,
    );
  }
}

abstract class _ObservationResponseModel implements ObservationResponseModel {
  const factory _ObservationResponseModel(
      {final int? id,
      final String? name,
      final ValueType? valueType,
      final String? hiThreshold,
      final String? loThreshold,
      @TimestampConverter() final DateTime? creationDate,
      final String? configs,
      final double? weightage}) = _$_ObservationResponseModel;

  factory _ObservationResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  ValueType? get valueType;
  @override
  String? get hiThreshold;
  @override
  String? get loThreshold;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  String? get configs;
  @override
  double? get weightage;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationResponseModelCopyWith<_$_ObservationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationSetSectionModel _$ObservationSetSectionModelFromJson(
    Map<String, dynamic> json) {
  return _ObservationSetSectionModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetSectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  ObservationSetModel? get observationSet => throw _privateConstructorUsedError;
  AssessmentModel? get assessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetSectionModelCopyWith<ObservationSetSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetSectionModelCopyWith<$Res> {
  factory $ObservationSetSectionModelCopyWith(ObservationSetSectionModel value,
          $Res Function(ObservationSetSectionModel) then) =
      _$ObservationSetSectionModelCopyWithImpl<$Res,
          ObservationSetSectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      ObservationSetModel? observationSet,
      AssessmentModel? assessment});

  $ObservationSetModelCopyWith<$Res>? get observationSet;
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class _$ObservationSetSectionModelCopyWithImpl<$Res,
        $Val extends ObservationSetSectionModel>
    implements $ObservationSetSectionModelCopyWith<$Res> {
  _$ObservationSetSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSet = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSet: freezed == observationSet
          ? _value.observationSet
          : observationSet // ignore: cast_nullable_to_non_nullable
              as ObservationSetModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObservationSetModelCopyWith<$Res>? get observationSet {
    if (_value.observationSet == null) {
      return null;
    }

    return $ObservationSetModelCopyWith<$Res>(_value.observationSet!, (value) {
      return _then(_value.copyWith(observationSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentModelCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $AssessmentModelCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ObservationSetSectionModelCopyWith<$Res>
    implements $ObservationSetSectionModelCopyWith<$Res> {
  factory _$$_ObservationSetSectionModelCopyWith(
          _$_ObservationSetSectionModel value,
          $Res Function(_$_ObservationSetSectionModel) then) =
      __$$_ObservationSetSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      ObservationSetModel? observationSet,
      AssessmentModel? assessment});

  @override
  $ObservationSetModelCopyWith<$Res>? get observationSet;
  @override
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class __$$_ObservationSetSectionModelCopyWithImpl<$Res>
    extends _$ObservationSetSectionModelCopyWithImpl<$Res,
        _$_ObservationSetSectionModel>
    implements _$$_ObservationSetSectionModelCopyWith<$Res> {
  __$$_ObservationSetSectionModelCopyWithImpl(
      _$_ObservationSetSectionModel _value,
      $Res Function(_$_ObservationSetSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? observationSet = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_$_ObservationSetSectionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      observationSet: freezed == observationSet
          ? _value.observationSet
          : observationSet // ignore: cast_nullable_to_non_nullable
              as ObservationSetModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetSectionModel implements _ObservationSetSectionModel {
  const _$_ObservationSetSectionModel(
      {this.id,
      this.index,
      this.description,
      this.observationSet,
      this.assessment});

  factory _$_ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationSetSectionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final ObservationSetModel? observationSet;
  @override
  final AssessmentModel? assessment;

  @override
  String toString() {
    return 'ObservationSetSectionModel(id: $id, index: $index, description: $description, observationSet: $observationSet, assessment: $assessment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.observationSet, observationSet) ||
                other.observationSet == observationSet) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, index, description, observationSet, assessment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetSectionModelCopyWith<_$_ObservationSetSectionModel>
      get copyWith => __$$_ObservationSetSectionModelCopyWithImpl<
          _$_ObservationSetSectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetSectionModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetSectionModel
    implements ObservationSetSectionModel {
  const factory _ObservationSetSectionModel(
      {final int? id,
      final int? index,
      final String? description,
      final ObservationSetModel? observationSet,
      final AssessmentModel? assessment}) = _$_ObservationSetSectionModel;

  factory _ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationSetSectionModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  ObservationSetModel? get observationSet;
  @override
  AssessmentModel? get assessment;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetSectionModelCopyWith<_$_ObservationSetSectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

ObservationSetModel _$ObservationSetModelFromJson(Map<String, dynamic> json) {
  return _ObservationSetModel.fromJson(json);
}

/// @nodoc
mixin _$ObservationSetModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationSetModelCopyWith<ObservationSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationSetModelCopyWith<$Res> {
  factory $ObservationSetModelCopyWith(
          ObservationSetModel value, $Res Function(ObservationSetModel) then) =
      _$ObservationSetModelCopyWithImpl<$Res, ObservationSetModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class _$ObservationSetModelCopyWithImpl<$Res, $Val extends ObservationSetModel>
    implements $ObservationSetModelCopyWith<$Res> {
  _$ObservationSetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ObservationSetModelCopyWith<$Res>
    implements $ObservationSetModelCopyWith<$Res> {
  factory _$$_ObservationSetModelCopyWith(_$_ObservationSetModel value,
          $Res Function(_$_ObservationSetModel) then) =
      __$$_ObservationSetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class __$$_ObservationSetModelCopyWithImpl<$Res>
    extends _$ObservationSetModelCopyWithImpl<$Res, _$_ObservationSetModel>
    implements _$$_ObservationSetModelCopyWith<$Res> {
  __$$_ObservationSetModelCopyWithImpl(_$_ObservationSetModel _value,
      $Res Function(_$_ObservationSetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_ObservationSetModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObservationSetModel implements _ObservationSetModel {
  const _$_ObservationSetModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate});

  factory _$_ObservationSetModel.fromJson(Map<String, dynamic> json) =>
      _$$_ObservationSetModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;

  @override
  String toString() {
    return 'ObservationSetModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObservationSetModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, version, description, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ObservationSetModelCopyWith<_$_ObservationSetModel> get copyWith =>
      __$$_ObservationSetModelCopyWithImpl<_$_ObservationSetModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObservationSetModelToJson(
      this,
    );
  }
}

abstract class _ObservationSetModel implements ObservationSetModel {
  const factory _ObservationSetModel(
          {final int? id,
          final String? name,
          final String? version,
          final String? description,
          @TimestampConverter() final DateTime? creationDate}) =
      _$_ObservationSetModel;

  factory _ObservationSetModel.fromJson(Map<String, dynamic> json) =
      _$_ObservationSetModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_ObservationSetModelCopyWith<_$_ObservationSetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaListSectionModel _$MediaListSectionModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListSectionModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListSectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaListModel? get mediaList => throw _privateConstructorUsedError;
  AssessmentModel? get assessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListSectionModelCopyWith<MediaListSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListSectionModelCopyWith<$Res> {
  factory $MediaListSectionModelCopyWith(MediaListSectionModel value,
          $Res Function(MediaListSectionModel) then) =
      _$MediaListSectionModelCopyWithImpl<$Res, MediaListSectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListModel? mediaList,
      AssessmentModel? assessment});

  $MediaListModelCopyWith<$Res>? get mediaList;
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class _$MediaListSectionModelCopyWithImpl<$Res,
        $Val extends MediaListSectionModel>
    implements $MediaListSectionModelCopyWith<$Res> {
  _$MediaListSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? mediaList = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaList: freezed == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as MediaListModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaListModelCopyWith<$Res>? get mediaList {
    if (_value.mediaList == null) {
      return null;
    }

    return $MediaListModelCopyWith<$Res>(_value.mediaList!, (value) {
      return _then(_value.copyWith(mediaList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentModelCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $AssessmentModelCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaListSectionModelCopyWith<$Res>
    implements $MediaListSectionModelCopyWith<$Res> {
  factory _$$_MediaListSectionModelCopyWith(_$_MediaListSectionModel value,
          $Res Function(_$_MediaListSectionModel) then) =
      __$$_MediaListSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListModel? mediaList,
      AssessmentModel? assessment});

  @override
  $MediaListModelCopyWith<$Res>? get mediaList;
  @override
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class __$$_MediaListSectionModelCopyWithImpl<$Res>
    extends _$MediaListSectionModelCopyWithImpl<$Res, _$_MediaListSectionModel>
    implements _$$_MediaListSectionModelCopyWith<$Res> {
  __$$_MediaListSectionModelCopyWithImpl(_$_MediaListSectionModel _value,
      $Res Function(_$_MediaListSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? mediaList = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_$_MediaListSectionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaList: freezed == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as MediaListModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListSectionModel implements _MediaListSectionModel {
  const _$_MediaListSectionModel(
      {this.id, this.index, this.description, this.mediaList, this.assessment});

  factory _$_MediaListSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListSectionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final MediaListModel? mediaList;
  @override
  final AssessmentModel? assessment;

  @override
  String toString() {
    return 'MediaListSectionModel(id: $id, index: $index, description: $description, mediaList: $mediaList, assessment: $assessment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaList, mediaList) ||
                other.mediaList == mediaList) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, index, description, mediaList, assessment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListSectionModelCopyWith<_$_MediaListSectionModel> get copyWith =>
      __$$_MediaListSectionModelCopyWithImpl<_$_MediaListSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListSectionModelToJson(
      this,
    );
  }
}

abstract class _MediaListSectionModel implements MediaListSectionModel {
  const factory _MediaListSectionModel(
      {final int? id,
      final int? index,
      final String? description,
      final MediaListModel? mediaList,
      final AssessmentModel? assessment}) = _$_MediaListSectionModel;

  factory _MediaListSectionModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListSectionModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  MediaListModel? get mediaList;
  @override
  AssessmentModel? get assessment;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListSectionModelCopyWith<_$_MediaListSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaListModel _$MediaListModelFromJson(Map<String, dynamic> json) {
  return _MediaListModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListModelCopyWith<MediaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListModelCopyWith<$Res> {
  factory $MediaListModelCopyWith(
          MediaListModel value, $Res Function(MediaListModel) then) =
      _$MediaListModelCopyWithImpl<$Res, MediaListModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class _$MediaListModelCopyWithImpl<$Res, $Val extends MediaListModel>
    implements $MediaListModelCopyWith<$Res> {
  _$MediaListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaListModelCopyWith<$Res>
    implements $MediaListModelCopyWith<$Res> {
  factory _$$_MediaListModelCopyWith(
          _$_MediaListModel value, $Res Function(_$_MediaListModel) then) =
      __$$_MediaListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class __$$_MediaListModelCopyWithImpl<$Res>
    extends _$MediaListModelCopyWithImpl<$Res, _$_MediaListModel>
    implements _$$_MediaListModelCopyWith<$Res> {
  __$$_MediaListModelCopyWithImpl(
      _$_MediaListModel _value, $Res Function(_$_MediaListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_MediaListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListModel implements _MediaListModel {
  const _$_MediaListModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate});

  factory _$_MediaListModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;

  @override
  String toString() {
    return 'MediaListModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, version, description, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListModelCopyWith<_$_MediaListModel> get copyWith =>
      __$$_MediaListModelCopyWithImpl<_$_MediaListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListModelToJson(
      this,
    );
  }
}

abstract class _MediaListModel implements MediaListModel {
  const factory _MediaListModel(
      {final int? id,
      final String? name,
      final String? version,
      final String? description,
      @TimestampConverter() final DateTime? creationDate}) = _$_MediaListModel;

  factory _MediaListModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListModelCopyWith<_$_MediaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
