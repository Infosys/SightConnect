// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentResponseModel _$AssessmentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AssessmentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentResponseModel {
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
  $AssessmentResponseModelCopyWith<AssessmentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentResponseModelCopyWith<$Res> {
  factory $AssessmentResponseModelCopyWith(AssessmentResponseModel value,
          $Res Function(AssessmentResponseModel) then) =
      _$AssessmentResponseModelCopyWithImpl<$Res, AssessmentResponseModel>;
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
class _$AssessmentResponseModelCopyWithImpl<$Res,
        $Val extends AssessmentResponseModel>
    implements $AssessmentResponseModelCopyWith<$Res> {
  _$AssessmentResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AssessmentResponseModelCopyWith<$Res>
    implements $AssessmentResponseModelCopyWith<$Res> {
  factory _$$_AssessmentResponseModelCopyWith(_$_AssessmentResponseModel value,
          $Res Function(_$_AssessmentResponseModel) then) =
      __$$_AssessmentResponseModelCopyWithImpl<$Res>;
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
class __$$_AssessmentResponseModelCopyWithImpl<$Res>
    extends _$AssessmentResponseModelCopyWithImpl<$Res,
        _$_AssessmentResponseModel>
    implements _$$_AssessmentResponseModelCopyWith<$Res> {
  __$$_AssessmentResponseModelCopyWithImpl(_$_AssessmentResponseModel _value,
      $Res Function(_$_AssessmentResponseModel) _then)
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
    return _then(_$_AssessmentResponseModel(
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
class _$_AssessmentResponseModel implements _AssessmentResponseModel {
  const _$_AssessmentResponseModel(
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

  factory _$_AssessmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentResponseModelFromJson(json);

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
    return 'AssessmentResponseModel(id: $id, name: $name, organizationCode: $organizationCode, condition: $condition, assessmentType: $assessmentType, organ: $organ, questionnaireSectionsResponseDTOList: $questionnaireSectionsResponseDTOList, mediaListSectionResponseDTOList: $mediaListSectionResponseDTOList, observationSetSectionResponseDTOList: $observationSetSectionResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssessmentResponseModel &&
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
  _$$_AssessmentResponseModelCopyWith<_$_AssessmentResponseModel>
      get copyWith =>
          __$$_AssessmentResponseModelCopyWithImpl<_$_AssessmentResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentResponseModelToJson(
      this,
    );
  }
}

abstract class _AssessmentResponseModel implements AssessmentResponseModel {
  const factory _AssessmentResponseModel(
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
          observationSetSectionResponseDTOList}) = _$_AssessmentResponseModel;

  factory _AssessmentResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentResponseModel.fromJson;

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
  _$$_AssessmentResponseModelCopyWith<_$_AssessmentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
