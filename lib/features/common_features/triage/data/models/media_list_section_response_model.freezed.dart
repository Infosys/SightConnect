// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_list_section_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaListSectionResponseModel _$MediaListSectionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListSectionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListSectionResponseModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaListSectionModel? get supersection => throw _privateConstructorUsedError;
  List<MediaListResponseModel>? get mediaListResponseDTOList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListSectionResponseModelCopyWith<MediaListSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListSectionResponseModelCopyWith<$Res> {
  factory $MediaListSectionResponseModelCopyWith(
          MediaListSectionResponseModel value,
          $Res Function(MediaListSectionResponseModel) then) =
      _$MediaListSectionResponseModelCopyWithImpl<$Res,
          MediaListSectionResponseModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListSectionModel? supersection,
      List<MediaListResponseModel>? mediaListResponseDTOList});

  $MediaListSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class _$MediaListSectionResponseModelCopyWithImpl<$Res,
        $Val extends MediaListSectionResponseModel>
    implements $MediaListSectionResponseModelCopyWith<$Res> {
  _$MediaListSectionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? mediaListResponseDTOList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as MediaListSectionModel?,
      mediaListResponseDTOList: freezed == mediaListResponseDTOList
          ? _value.mediaListResponseDTOList
          : mediaListResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListResponseModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaListSectionModelCopyWith<$Res>? get supersection {
    if (_value.supersection == null) {
      return null;
    }

    return $MediaListSectionModelCopyWith<$Res>(_value.supersection!, (value) {
      return _then(_value.copyWith(supersection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaListSectionResponseModelCopyWith<$Res>
    implements $MediaListSectionResponseModelCopyWith<$Res> {
  factory _$$_MediaListSectionResponseModelCopyWith(
          _$_MediaListSectionResponseModel value,
          $Res Function(_$_MediaListSectionResponseModel) then) =
      __$$_MediaListSectionResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListSectionModel? supersection,
      List<MediaListResponseModel>? mediaListResponseDTOList});

  @override
  $MediaListSectionModelCopyWith<$Res>? get supersection;
}

/// @nodoc
class __$$_MediaListSectionResponseModelCopyWithImpl<$Res>
    extends _$MediaListSectionResponseModelCopyWithImpl<$Res,
        _$_MediaListSectionResponseModel>
    implements _$$_MediaListSectionResponseModelCopyWith<$Res> {
  __$$_MediaListSectionResponseModelCopyWithImpl(
      _$_MediaListSectionResponseModel _value,
      $Res Function(_$_MediaListSectionResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? supersection = freezed,
    Object? mediaListResponseDTOList = freezed,
  }) {
    return _then(_$_MediaListSectionResponseModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      supersection: freezed == supersection
          ? _value.supersection
          : supersection // ignore: cast_nullable_to_non_nullable
              as MediaListSectionModel?,
      mediaListResponseDTOList: freezed == mediaListResponseDTOList
          ? _value._mediaListResponseDTOList
          : mediaListResponseDTOList // ignore: cast_nullable_to_non_nullable
              as List<MediaListResponseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListSectionResponseModel
    implements _MediaListSectionResponseModel {
  const _$_MediaListSectionResponseModel(
      {this.id,
      this.index,
      this.description,
      this.supersection,
      final List<MediaListResponseModel>? mediaListResponseDTOList})
      : _mediaListResponseDTOList = mediaListResponseDTOList;

  factory _$_MediaListSectionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_MediaListSectionResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final MediaListSectionModel? supersection;
  final List<MediaListResponseModel>? _mediaListResponseDTOList;
  @override
  List<MediaListResponseModel>? get mediaListResponseDTOList {
    final value = _mediaListResponseDTOList;
    if (value == null) return null;
    if (_mediaListResponseDTOList is EqualUnmodifiableListView)
      return _mediaListResponseDTOList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MediaListSectionResponseModel(id: $id, index: $index, description: $description, supersection: $supersection, mediaListResponseDTOList: $mediaListResponseDTOList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListSectionResponseModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.supersection, supersection) ||
                other.supersection == supersection) &&
            const DeepCollectionEquality().equals(
                other._mediaListResponseDTOList, _mediaListResponseDTOList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      index,
      description,
      supersection,
      const DeepCollectionEquality().hash(_mediaListResponseDTOList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListSectionResponseModelCopyWith<_$_MediaListSectionResponseModel>
      get copyWith => __$$_MediaListSectionResponseModelCopyWithImpl<
          _$_MediaListSectionResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListSectionResponseModelToJson(
      this,
    );
  }
}

abstract class _MediaListSectionResponseModel
    implements MediaListSectionResponseModel {
  const factory _MediaListSectionResponseModel(
          {final int? id,
          final int? index,
          final String? description,
          final MediaListSectionModel? supersection,
          final List<MediaListResponseModel>? mediaListResponseDTOList}) =
      _$_MediaListSectionResponseModel;

  factory _MediaListSectionResponseModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListSectionResponseModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  MediaListSectionModel? get supersection;
  @override
  List<MediaListResponseModel>? get mediaListResponseDTOList;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListSectionResponseModelCopyWith<_$_MediaListSectionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
