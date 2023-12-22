// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_party_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RelatedPartyModel _$RelatedPartyModelFromJson(Map<String, dynamic> json) {
  return _RelatedPartyModel.fromJson(json);
}

/// @nodoc
mixin _$RelatedPartyModel {
  int? get patientId => throw _privateConstructorUsedError;
  Relationship? get relation => throw _privateConstructorUsedError;
  int? get parentPatientId => throw _privateConstructorUsedError;
  String? get regRef => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get profilePicture => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedPartyModelCopyWith<RelatedPartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedPartyModelCopyWith<$Res> {
  factory $RelatedPartyModelCopyWith(
          RelatedPartyModel value, $Res Function(RelatedPartyModel) then) =
      _$RelatedPartyModelCopyWithImpl<$Res, RelatedPartyModel>;
  @useResult
  $Res call(
      {int? patientId,
      Relationship? relation,
      int? parentPatientId,
      String? regRef,
      String? name,
      String? profilePicture,
      int? age});
}

/// @nodoc
class _$RelatedPartyModelCopyWithImpl<$Res, $Val extends RelatedPartyModel>
    implements $RelatedPartyModelCopyWith<$Res> {
  _$RelatedPartyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? regRef = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedPartyModelCopyWith<$Res>
    implements $RelatedPartyModelCopyWith<$Res> {
  factory _$$_RelatedPartyModelCopyWith(_$_RelatedPartyModel value,
          $Res Function(_$_RelatedPartyModel) then) =
      __$$_RelatedPartyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? patientId,
      Relationship? relation,
      int? parentPatientId,
      String? regRef,
      String? name,
      String? profilePicture,
      int? age});
}

/// @nodoc
class __$$_RelatedPartyModelCopyWithImpl<$Res>
    extends _$RelatedPartyModelCopyWithImpl<$Res, _$_RelatedPartyModel>
    implements _$$_RelatedPartyModelCopyWith<$Res> {
  __$$_RelatedPartyModelCopyWithImpl(
      _$_RelatedPartyModel _value, $Res Function(_$_RelatedPartyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = freezed,
    Object? relation = freezed,
    Object? parentPatientId = freezed,
    Object? regRef = freezed,
    Object? name = freezed,
    Object? profilePicture = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_RelatedPartyModel(
      patientId: freezed == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int?,
      relation: freezed == relation
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as Relationship?,
      parentPatientId: freezed == parentPatientId
          ? _value.parentPatientId
          : parentPatientId // ignore: cast_nullable_to_non_nullable
              as int?,
      regRef: freezed == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RelatedPartyModel implements _RelatedPartyModel {
  const _$_RelatedPartyModel(
      {this.patientId,
      this.relation,
      this.parentPatientId,
      this.regRef,
      this.name,
      this.profilePicture,
      this.age});

  factory _$_RelatedPartyModel.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedPartyModelFromJson(json);

  @override
  final int? patientId;
  @override
  final Relationship? relation;
  @override
  final int? parentPatientId;
  @override
  final String? regRef;
  @override
  final String? name;
  @override
  final String? profilePicture;
  @override
  final int? age;

  @override
  String toString() {
    return 'RelatedPartyModel(patientId: $patientId, relation: $relation, parentPatientId: $parentPatientId, regRef: $regRef, name: $name, profilePicture: $profilePicture, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RelatedPartyModel &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.parentPatientId, parentPatientId) ||
                other.parentPatientId == parentPatientId) &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, relation,
      parentPatientId, regRef, name, profilePicture, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedPartyModelCopyWith<_$_RelatedPartyModel> get copyWith =>
      __$$_RelatedPartyModelCopyWithImpl<_$_RelatedPartyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedPartyModelToJson(
      this,
    );
  }
}

abstract class _RelatedPartyModel implements RelatedPartyModel {
  const factory _RelatedPartyModel(
      {final int? patientId,
      final Relationship? relation,
      final int? parentPatientId,
      final String? regRef,
      final String? name,
      final String? profilePicture,
      final int? age}) = _$_RelatedPartyModel;

  factory _RelatedPartyModel.fromJson(Map<String, dynamic> json) =
      _$_RelatedPartyModel.fromJson;

  @override
  int? get patientId;
  @override
  Relationship? get relation;
  @override
  int? get parentPatientId;
  @override
  String? get regRef;
  @override
  String? get name;
  @override
  String? get profilePicture;
  @override
  int? get age;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedPartyModelCopyWith<_$_RelatedPartyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
