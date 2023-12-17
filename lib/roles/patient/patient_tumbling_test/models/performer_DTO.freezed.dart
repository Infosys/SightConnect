// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performer_DTO.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerformerDTO _$PerformerDTOFromJson(Map<String, dynamic> json) {
  return _PerformerDTO.fromJson(json);
}

/// @nodoc
mixin _$PerformerDTO {
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerDTOCopyWith<PerformerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerDTOCopyWith<$Res> {
  factory $PerformerDTOCopyWith(
          PerformerDTO value, $Res Function(PerformerDTO) then) =
      _$PerformerDTOCopyWithImpl<$Res, PerformerDTO>;
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerDTOCopyWithImpl<$Res, $Val extends PerformerDTO>
    implements $PerformerDTOCopyWith<$Res> {
  _$PerformerDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_PerformerDTOCopyWith<$Res>
    implements $PerformerDTOCopyWith<$Res> {
  factory _$$_PerformerDTOCopyWith(
          _$_PerformerDTO value, $Res Function(_$_PerformerDTO) then) =
      __$$_PerformerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$_PerformerDTOCopyWithImpl<$Res>
    extends _$PerformerDTOCopyWithImpl<$Res, _$_PerformerDTO>
    implements _$$_PerformerDTOCopyWith<$Res> {
  __$$_PerformerDTOCopyWithImpl(
      _$_PerformerDTO _value, $Res Function(_$_PerformerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_PerformerDTO(
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
class _$_PerformerDTO implements _PerformerDTO {
  const _$_PerformerDTO({this.role, this.identifier});

  factory _$_PerformerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerDTOFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerDTO(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformerDTO &&
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
  _$$_PerformerDTOCopyWith<_$_PerformerDTO> get copyWith =>
      __$$_PerformerDTOCopyWithImpl<_$_PerformerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerDTOToJson(
      this,
    );
  }
}

abstract class _PerformerDTO implements PerformerDTO {
  const factory _PerformerDTO(
      {final PerformerRole? role, final int? identifier}) = _$_PerformerDTO;

  factory _PerformerDTO.fromJson(Map<String, dynamic> json) =
      _$_PerformerDTO.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerDTOCopyWith<_$_PerformerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
