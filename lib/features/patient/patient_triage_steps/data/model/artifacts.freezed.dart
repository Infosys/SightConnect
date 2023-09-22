// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artifacts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artifacts _$ArtifactsFromJson(Map<String, dynamic> json) {
  return _Artifacts.fromJson(json);
}

/// @nodoc
mixin _$Artifacts {
  int get id => throw _privateConstructorUsedError;
  List<ArtifactImage>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtifactsCopyWith<Artifacts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtifactsCopyWith<$Res> {
  factory $ArtifactsCopyWith(Artifacts value, $Res Function(Artifacts) then) =
      _$ArtifactsCopyWithImpl<$Res, Artifacts>;
  @useResult
  $Res call({int id, List<ArtifactImage>? images});
}

/// @nodoc
class _$ArtifactsCopyWithImpl<$Res, $Val extends Artifacts>
    implements $ArtifactsCopyWith<$Res> {
  _$ArtifactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ArtifactImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtifactsCopyWith<$Res> implements $ArtifactsCopyWith<$Res> {
  factory _$$_ArtifactsCopyWith(
          _$_Artifacts value, $Res Function(_$_Artifacts) then) =
      __$$_ArtifactsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<ArtifactImage>? images});
}

/// @nodoc
class __$$_ArtifactsCopyWithImpl<$Res>
    extends _$ArtifactsCopyWithImpl<$Res, _$_Artifacts>
    implements _$$_ArtifactsCopyWith<$Res> {
  __$$_ArtifactsCopyWithImpl(
      _$_Artifacts _value, $Res Function(_$_Artifacts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
  }) {
    return _then(_$_Artifacts(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ArtifactImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artifacts implements _Artifacts {
  const _$_Artifacts({required this.id, final List<ArtifactImage>? images})
      : _images = images;

  factory _$_Artifacts.fromJson(Map<String, dynamic> json) =>
      _$$_ArtifactsFromJson(json);

  @override
  final int id;
  final List<ArtifactImage>? _images;
  @override
  List<ArtifactImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Artifacts(id: $id, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artifacts &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtifactsCopyWith<_$_Artifacts> get copyWith =>
      __$$_ArtifactsCopyWithImpl<_$_Artifacts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtifactsToJson(
      this,
    );
  }
}

abstract class _Artifacts implements Artifacts {
  const factory _Artifacts(
      {required final int id,
      final List<ArtifactImage>? images}) = _$_Artifacts;

  factory _Artifacts.fromJson(Map<String, dynamic> json) =
      _$_Artifacts.fromJson;

  @override
  int get id;
  @override
  List<ArtifactImage>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_ArtifactsCopyWith<_$_Artifacts> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtifactImage _$ArtifactImageFromJson(Map<String, dynamic> json) {
  return _ArtifactImage.fromJson(json);
}

/// @nodoc
mixin _$ArtifactImage {
  int get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get timestamp => throw _privateConstructorUsedError;
  String? get baseUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  TriageEyeType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtifactImageCopyWith<ArtifactImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtifactImageCopyWith<$Res> {
  factory $ArtifactImageCopyWith(
          ArtifactImage value, $Res Function(ArtifactImage) then) =
      _$ArtifactImageCopyWithImpl<$Res, ArtifactImage>;
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? timestamp,
      String? baseUrl,
      String? path,
      TriageEyeType? type});
}

/// @nodoc
class _$ArtifactImageCopyWithImpl<$Res, $Val extends ArtifactImage>
    implements $ArtifactImageCopyWith<$Res> {
  _$ArtifactImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = freezed,
    Object? baseUrl = freezed,
    Object? path = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TriageEyeType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtifactImageCopyWith<$Res>
    implements $ArtifactImageCopyWith<$Res> {
  factory _$$_ArtifactImageCopyWith(
          _$_ArtifactImage value, $Res Function(_$_ArtifactImage) then) =
      __$$_ArtifactImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @TimestampConverter() DateTime? timestamp,
      String? baseUrl,
      String? path,
      TriageEyeType? type});
}

/// @nodoc
class __$$_ArtifactImageCopyWithImpl<$Res>
    extends _$ArtifactImageCopyWithImpl<$Res, _$_ArtifactImage>
    implements _$$_ArtifactImageCopyWith<$Res> {
  __$$_ArtifactImageCopyWithImpl(
      _$_ArtifactImage _value, $Res Function(_$_ArtifactImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = freezed,
    Object? baseUrl = freezed,
    Object? path = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ArtifactImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      baseUrl: freezed == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TriageEyeType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtifactImage implements _ArtifactImage {
  const _$_ArtifactImage(
      {required this.id,
      @TimestampConverter() this.timestamp,
      this.baseUrl,
      this.path,
      this.type});

  factory _$_ArtifactImage.fromJson(Map<String, dynamic> json) =>
      _$$_ArtifactImageFromJson(json);

  @override
  final int id;
  @override
  @TimestampConverter()
  final DateTime? timestamp;
  @override
  final String? baseUrl;
  @override
  final String? path;
  @override
  final TriageEyeType? type;

  @override
  String toString() {
    return 'ArtifactImage(id: $id, timestamp: $timestamp, baseUrl: $baseUrl, path: $path, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArtifactImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timestamp, baseUrl, path, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtifactImageCopyWith<_$_ArtifactImage> get copyWith =>
      __$$_ArtifactImageCopyWithImpl<_$_ArtifactImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtifactImageToJson(
      this,
    );
  }
}

abstract class _ArtifactImage implements ArtifactImage {
  const factory _ArtifactImage(
      {required final int id,
      @TimestampConverter() final DateTime? timestamp,
      final String? baseUrl,
      final String? path,
      final TriageEyeType? type}) = _$_ArtifactImage;

  factory _ArtifactImage.fromJson(Map<String, dynamic> json) =
      _$_ArtifactImage.fromJson;

  @override
  int get id;
  @override
  @TimestampConverter()
  DateTime? get timestamp;
  @override
  String? get baseUrl;
  @override
  String? get path;
  @override
  TriageEyeType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_ArtifactImageCopyWith<_$_ArtifactImage> get copyWith =>
      throw _privateConstructorUsedError;
}
