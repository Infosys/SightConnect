// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalRecordModel _$MedicalRecordModelFromJson(Map<String, dynamic> json) {
  return _MedicalRecordModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalRecordModel {
  int? get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get registrationDate => throw _privateConstructorUsedError;
  String? get organisationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalRecordModelCopyWith<MedicalRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalRecordModelCopyWith<$Res> {
  factory $MedicalRecordModelCopyWith(
          MedicalRecordModel value, $Res Function(MedicalRecordModel) then) =
      _$MedicalRecordModelCopyWithImpl<$Res, MedicalRecordModel>;
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class _$MedicalRecordModelCopyWithImpl<$Res, $Val extends MedicalRecordModel>
    implements $MedicalRecordModelCopyWith<$Res> {
  _$MedicalRecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicalRecordModelCopyWith<$Res>
    implements $MedicalRecordModelCopyWith<$Res> {
  factory _$$_MedicalRecordModelCopyWith(_$_MedicalRecordModel value,
          $Res Function(_$_MedicalRecordModel) then) =
      __$$_MedicalRecordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @TimestampConverter() DateTime? registrationDate,
      String? organisationId});
}

/// @nodoc
class __$$_MedicalRecordModelCopyWithImpl<$Res>
    extends _$MedicalRecordModelCopyWithImpl<$Res, _$_MedicalRecordModel>
    implements _$$_MedicalRecordModelCopyWith<$Res> {
  __$$_MedicalRecordModelCopyWithImpl(
      _$_MedicalRecordModel _value, $Res Function(_$_MedicalRecordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? registrationDate = freezed,
    Object? organisationId = freezed,
  }) {
    return _then(_$_MedicalRecordModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      registrationDate: freezed == registrationDate
          ? _value.registrationDate
          : registrationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalRecordModel implements _MedicalRecordModel {
  const _$_MedicalRecordModel(
      {this.id,
      @TimestampConverter() this.registrationDate,
      this.organisationId});

  factory _$_MedicalRecordModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalRecordModelFromJson(json);

  @override
  final int? id;
  @override
  @TimestampConverter()
  final DateTime? registrationDate;
  @override
  final String? organisationId;

  @override
  String toString() {
    return 'MedicalRecordModel(id: $id, registrationDate: $registrationDate, organisationId: $organisationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicalRecordModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registrationDate, registrationDate) ||
                other.registrationDate == registrationDate) &&
            (identical(other.organisationId, organisationId) ||
                other.organisationId == organisationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, registrationDate, organisationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicalRecordModelCopyWith<_$_MedicalRecordModel> get copyWith =>
      __$$_MedicalRecordModelCopyWithImpl<_$_MedicalRecordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalRecordModelToJson(
      this,
    );
  }
}

abstract class _MedicalRecordModel implements MedicalRecordModel {
  const factory _MedicalRecordModel(
      {final int? id,
      @TimestampConverter() final DateTime? registrationDate,
      final String? organisationId}) = _$_MedicalRecordModel;

  factory _MedicalRecordModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalRecordModel.fromJson;

  @override
  int? get id;
  @override
  @TimestampConverter()
  DateTime? get registrationDate;
  @override
  String? get organisationId;
  @override
  @JsonKey(ignore: true)
  _$$_MedicalRecordModelCopyWith<_$_MedicalRecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
