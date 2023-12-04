// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaResponseModel _$MediaResponseModelFromJson(Map<String, dynamic> json) {
  return _MediaResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaType? get type => throw _privateConstructorUsedError;
  int? get maxSize => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaResponseModelCopyWith<MediaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResponseModelCopyWith<$Res> {
  factory $MediaResponseModelCopyWith(
          MediaResponseModel value, $Res Function(MediaResponseModel) then) =
      _$MediaResponseModelCopyWithImpl<$Res, MediaResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      String? fileType});
}

/// @nodoc
class _$MediaResponseModelCopyWithImpl<$Res, $Val extends MediaResponseModel>
    implements $MediaResponseModelCopyWith<$Res> {
  _$MediaResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaResponseModelCopyWith<$Res>
    implements $MediaResponseModelCopyWith<$Res> {
  factory _$$_MediaResponseModelCopyWith(_$_MediaResponseModel value,
          $Res Function(_$_MediaResponseModel) then) =
      __$$_MediaResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      MediaType? type,
      int? maxSize,
      String? fileType});
}

/// @nodoc
class __$$_MediaResponseModelCopyWithImpl<$Res>
    extends _$MediaResponseModelCopyWithImpl<$Res, _$_MediaResponseModel>
    implements _$$_MediaResponseModelCopyWith<$Res> {
  __$$_MediaResponseModelCopyWithImpl(
      _$_MediaResponseModel _value, $Res Function(_$_MediaResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? maxSize = freezed,
    Object? fileType = freezed,
  }) {
    return _then(_$_MediaResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType?,
      maxSize: freezed == maxSize
          ? _value.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaResponseModel implements _MediaResponseModel {
  const _$_MediaResponseModel(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.maxSize,
      this.fileType});

  factory _$_MediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final MediaType? type;
  @override
  final int? maxSize;
  @override
  final String? fileType;

  @override
  String toString() {
    return 'MediaResponseModel(id: $id, name: $name, description: $description, type: $type, maxSize: $maxSize, fileType: $fileType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, type, maxSize, fileType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaResponseModelCopyWith<_$_MediaResponseModel> get copyWith =>
      __$$_MediaResponseModelCopyWithImpl<_$_MediaResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaResponseModel implements MediaResponseModel {
  const factory _MediaResponseModel(
      {final int? id,
      final String? name,
      final String? description,
      final MediaType? type,
      final int? maxSize,
      final String? fileType}) = _$_MediaResponseModel;

  factory _MediaResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  MediaType? get type;
  @override
  int? get maxSize;
  @override
  String? get fileType;
  @override
  @JsonKey(ignore: true)
  _$$_MediaResponseModelCopyWith<_$_MediaResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
