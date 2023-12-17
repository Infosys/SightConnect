// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
mixin _$AddressDTO {
  int? get id => throw _privateConstructorUsedError;
  String? get line => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get pinCode => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  bool? get primary => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res, AddressDTO>;
  @useResult
  $Res call(
      {int? id,
      String? line,
      String? district,
      String? state,
      String? pinCode,
      String? label,
      Status? status,
      bool? primary,
      bool? deleted});
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res, $Val extends AddressDTO>
    implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? line = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? label = freezed,
    Object? status = freezed,
    Object? primary = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDTOCopyWith<$Res>
    implements $AddressDTOCopyWith<$Res> {
  factory _$$_AddressDTOCopyWith(
          _$_AddressDTO value, $Res Function(_$_AddressDTO) then) =
      __$$_AddressDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? line,
      String? district,
      String? state,
      String? pinCode,
      String? label,
      Status? status,
      bool? primary,
      bool? deleted});
}

/// @nodoc
class __$$_AddressDTOCopyWithImpl<$Res>
    extends _$AddressDTOCopyWithImpl<$Res, _$_AddressDTO>
    implements _$$_AddressDTOCopyWith<$Res> {
  __$$_AddressDTOCopyWithImpl(
      _$_AddressDTO _value, $Res Function(_$_AddressDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? line = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? label = freezed,
    Object? status = freezed,
    Object? primary = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_AddressDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressDTO implements _AddressDTO {
  const _$_AddressDTO(
      {this.id,
      this.line,
      this.district,
      this.state,
      this.pinCode,
      this.label,
      this.status,
      this.primary,
      this.deleted});

  factory _$_AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDTOFromJson(json);

  @override
  final int? id;
  @override
  final String? line;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final String? pinCode;
  @override
  final String? label;
  @override
  final Status? status;
  @override
  final bool? primary;
  @override
  final bool? deleted;

  @override
  String toString() {
    return 'AddressDTO(id: $id, line: $line, district: $district, state: $state, pinCode: $pinCode, label: $label, status: $status, primary: $primary, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, line, district, state,
      pinCode, label, status, primary, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      __$$_AddressDTOCopyWithImpl<_$_AddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDTOToJson(
      this,
    );
  }
}

abstract class _AddressDTO implements AddressDTO {
  const factory _AddressDTO(
      {final int? id,
      final String? line,
      final String? district,
      final String? state,
      final String? pinCode,
      final String? label,
      final Status? status,
      final bool? primary,
      final bool? deleted}) = _$_AddressDTO;

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressDTO.fromJson;

  @override
  int? get id;
  @override
  String? get line;
  @override
  String? get district;
  @override
  String? get state;
  @override
  String? get pinCode;
  @override
  String? get label;
  @override
  Status? get status;
  @override
  bool? get primary;
  @override
  bool? get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDTOCopyWith<_$_AddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
