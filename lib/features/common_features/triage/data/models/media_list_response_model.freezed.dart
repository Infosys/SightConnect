// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaListResponseModel _$MediaListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;
  List<MediaResponseModel>? get mediaResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListResponseModelCopyWith<MediaListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListResponseModelCopyWith<$Res> {
  factory $MediaListResponseModelCopyWith(MediaListResponseModel value,
          $Res Function(MediaListResponseModel) then) =
      _$MediaListResponseModelCopyWithImpl<$Res, MediaListResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      List<MediaResponseModel>? mediaResponseDTOList});
}

/// @nodoc
class _$MediaListResponseModelCopyWithImpl<$Res,
        $Val extends MediaListResponseModel>
    implements $MediaListResponseModelCopyWith<$Res> {
  _$MediaListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? mediaResponseDTOList = freezed,
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
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaResponseDTOList: freezed == mediaResponseDTOList
          ? _value.mediaResponseDTOList
          : mediaResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaListResponseModelCopyWith<$Res>
    implements $MediaListResponseModelCopyWith<$Res> {
  factory _$$_MediaListResponseModelCopyWith(_$_MediaListResponseModel value,
          $Res Function(_$_MediaListResponseModel) then) =
      __$$_MediaListResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate,
      List<MediaResponseModel>? mediaResponseDTOList});
}

/// @nodoc
class __$$_MediaListResponseModelCopyWithImpl<$Res>
    extends _$MediaListResponseModelCopyWithImpl<$Res,
        _$_MediaListResponseModel>
    implements _$$_MediaListResponseModelCopyWith<$Res> {
  __$$_MediaListResponseModelCopyWithImpl(_$_MediaListResponseModel _value,
      $Res Function(_$_MediaListResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
    Object? mediaResponseDTOList = freezed,
  }) {
    return _then(_$_MediaListResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mediaResponseDTOList: freezed == mediaResponseDTOList
          ? _value._mediaResponseDTOList
          : mediaResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListResponseModel implements _MediaListResponseModel {
  const _$_MediaListResponseModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate,
      final List<MediaResponseModel>? mediaResponseDTOList})
      : _mediaResponseDTOList = mediaResponseDTOList;

  factory _$_MediaListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? version;
  @override
  final String? description;
  @override
  @TimestampConverter()
  final DateTime? creationDate;
  final List<MediaResponseModel>? _mediaResponseDTOList;
  @override
  List<MediaResponseModel>? get mediaResponseDTOList {
    final value = _mediaResponseDTOList;
    if (value == null) return null;
    if (_mediaResponseDTOList is EqualUnmodifiableListView)
      return _mediaResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaListResponseModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate, mediaResponseDTOList: $mediaResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            const DeepCollectionEquality()
                .equals(other._mediaResponseDTOList, _mediaResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, version, description,
      creationDate, const DeepCollectionEquality().hash(_mediaResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListResponseModelCopyWith<_$_MediaListResponseModel> get copyWith =>
      __$$_MediaListResponseModelCopyWithImpl<_$_MediaListResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaListResponseModel implements MediaListResponseModel {
  const factory _MediaListResponseModel(
          {final int? id,
          final String? name,
          final String? version,
          final String? description,
          @TimestampConverter() final DateTime? creationDate,
          final List<MediaResponseModel>? mediaResponseDTOList}) =
      _$_MediaListResponseModel;

  factory _MediaListResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get version;
  @override
  String? get description;
  @override
  @TimestampConverter()
  DateTime? get creationDate;
  @override
  List<MediaResponseModel>? get mediaResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListResponseModelCopyWith<_$_MediaListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
