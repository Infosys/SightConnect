// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_sections_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
