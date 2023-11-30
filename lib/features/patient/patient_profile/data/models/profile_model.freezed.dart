// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  ExtendedPatientModel? get patient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({ExtendedPatientModel? patient});

  $ExtendedPatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_value.copyWith(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as ExtendedPatientModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtendedPatientModelCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $ExtendedPatientModelCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExtendedPatientModel? patient});

  @override
  $ExtendedPatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_$_ProfileModel(
      patient: freezed == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as ExtendedPatientModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel({this.patient});

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  final ExtendedPatientModel? patient;

  @override
  String toString() {
    return 'ProfileModel(patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.patient, patient) || other.patient == patient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel({final ExtendedPatientModel? patient}) =
      _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  ExtendedPatientModel? get patient;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
