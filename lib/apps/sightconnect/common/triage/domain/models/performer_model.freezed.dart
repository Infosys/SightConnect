// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerformerModel _$PerformerModelFromJson(Map<String, dynamic> json) {
  return _PerformerModel.fromJson(json);
}

/// @nodoc
mixin _$PerformerModel {
  PerformerRole? get role => throw _privateConstructorUsedError;
  int? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerModelCopyWith<PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerModelCopyWith<$Res> {
  factory $PerformerModelCopyWith(
          PerformerModel value, $Res Function(PerformerModel) then) =
      _$PerformerModelCopyWithImpl<$Res, PerformerModel>;
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class _$PerformerModelCopyWithImpl<$Res, $Val extends PerformerModel>
    implements $PerformerModelCopyWith<$Res> {
  _$PerformerModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PerformerModelCopyWith<$Res>
    implements $PerformerModelCopyWith<$Res> {
  factory _$$_PerformerModelCopyWith(
          _$_PerformerModel value, $Res Function(_$_PerformerModel) then) =
      __$$_PerformerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerformerRole? role, int? identifier});
}

/// @nodoc
class __$$_PerformerModelCopyWithImpl<$Res>
    extends _$PerformerModelCopyWithImpl<$Res, _$_PerformerModel>
    implements _$$_PerformerModelCopyWith<$Res> {
  __$$_PerformerModelCopyWithImpl(
      _$_PerformerModel _value, $Res Function(_$_PerformerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$_PerformerModel(
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
class _$_PerformerModel implements _PerformerModel {
  const _$_PerformerModel({this.role, this.identifier});

  factory _$_PerformerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerModelFromJson(json);

  @override
  final PerformerRole? role;
  @override
  final int? identifier;

  @override
  String toString() {
    return 'PerformerModel(role: $role, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformerModel &&
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
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      __$$_PerformerModelCopyWithImpl<_$_PerformerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerModelToJson(
      this,
    );
  }
}

abstract class _PerformerModel implements PerformerModel {
  const factory _PerformerModel(
      {final PerformerRole? role, final int? identifier}) = _$_PerformerModel;

  factory _PerformerModel.fromJson(Map<String, dynamic> json) =
      _$_PerformerModel.fromJson;

  @override
  PerformerRole? get role;
  @override
  int? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerModelCopyWith<_$_PerformerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
