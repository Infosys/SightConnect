// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identifier_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdentifierModel _$IdentifierModelFromJson(Map<String, dynamic> json) {
  return _IdentifierModel.fromJson(json);
}

/// @nodoc
mixin _$IdentifierModel {
  int? get id => throw _privateConstructorUsedError;
  IdentifierType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifierModelCopyWith<IdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierModelCopyWith<$Res> {
  factory $IdentifierModelCopyWith(
          IdentifierModel value, $Res Function(IdentifierModel) then) =
      _$IdentifierModelCopyWithImpl<$Res, IdentifierModel>;
  @useResult
  $Res call({int? id, IdentifierType? type});
}

/// @nodoc
class _$IdentifierModelCopyWithImpl<$Res, $Val extends IdentifierModel>
    implements $IdentifierModelCopyWith<$Res> {
  _$IdentifierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentifierModelCopyWith<$Res>
    implements $IdentifierModelCopyWith<$Res> {
  factory _$$_IdentifierModelCopyWith(
          _$_IdentifierModel value, $Res Function(_$_IdentifierModel) then) =
      __$$_IdentifierModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, IdentifierType? type});
}

/// @nodoc
class __$$_IdentifierModelCopyWithImpl<$Res>
    extends _$IdentifierModelCopyWithImpl<$Res, _$_IdentifierModel>
    implements _$$_IdentifierModelCopyWith<$Res> {
  __$$_IdentifierModelCopyWithImpl(
      _$_IdentifierModel _value, $Res Function(_$_IdentifierModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_IdentifierModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IdentifierType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentifierModel implements _IdentifierModel {
  const _$_IdentifierModel({this.id, this.type});

  factory _$_IdentifierModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdentifierModelFromJson(json);

  @override
  final int? id;
  @override
  final IdentifierType? type;

  @override
  String toString() {
    return 'IdentifierModel(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentifierModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentifierModelCopyWith<_$_IdentifierModel> get copyWith =>
      __$$_IdentifierModelCopyWithImpl<_$_IdentifierModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentifierModelToJson(
      this,
    );
  }
}

abstract class _IdentifierModel implements IdentifierModel {
  const factory _IdentifierModel({final int? id, final IdentifierType? type}) =
      _$_IdentifierModel;

  factory _IdentifierModel.fromJson(Map<String, dynamic> json) =
      _$_IdentifierModel.fromJson;

  @override
  int? get id;
  @override
  IdentifierType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_IdentifierModelCopyWith<_$_IdentifierModel> get copyWith =>
      throw _privateConstructorUsedError;
}
