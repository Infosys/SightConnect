// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
