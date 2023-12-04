// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
