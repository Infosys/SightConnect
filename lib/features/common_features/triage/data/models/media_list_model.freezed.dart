// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaListModel _$MediaListModelFromJson(Map<String, dynamic> json) {
  return _MediaListModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListModelCopyWith<MediaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListModelCopyWith<$Res> {
  factory $MediaListModelCopyWith(
          MediaListModel value, $Res Function(MediaListModel) then) =
      _$MediaListModelCopyWithImpl<$Res, MediaListModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class _$MediaListModelCopyWithImpl<$Res, $Val extends MediaListModel>
    implements $MediaListModelCopyWith<$Res> {
  _$MediaListModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaListModelCopyWith<$Res>
    implements $MediaListModelCopyWith<$Res> {
  factory _$$_MediaListModelCopyWith(
          _$_MediaListModel value, $Res Function(_$_MediaListModel) then) =
      __$$_MediaListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? version,
      String? description,
      @TimestampConverter() DateTime? creationDate});
}

/// @nodoc
class __$$_MediaListModelCopyWithImpl<$Res>
    extends _$MediaListModelCopyWithImpl<$Res, _$_MediaListModel>
    implements _$$_MediaListModelCopyWith<$Res> {
  __$$_MediaListModelCopyWithImpl(
      _$_MediaListModel _value, $Res Function(_$_MediaListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? creationDate = freezed,
  }) {
    return _then(_$_MediaListModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListModel implements _MediaListModel {
  const _$_MediaListModel(
      {this.id,
      this.name,
      this.version,
      this.description,
      @TimestampConverter() this.creationDate});

  factory _$_MediaListModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListModelFromJson(json);

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

  @override
  String toString() {
    return 'MediaListModel(id: $id, name: $name, version: $version, description: $description, creationDate: $creationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, version, description, creationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListModelCopyWith<_$_MediaListModel> get copyWith =>
      __$$_MediaListModelCopyWithImpl<_$_MediaListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListModelToJson(
      this,
    );
  }
}

abstract class _MediaListModel implements MediaListModel {
  const factory _MediaListModel(
      {final int? id,
      final String? name,
      final String? version,
      final String? description,
      @TimestampConverter() final DateTime? creationDate}) = _$_MediaListModel;

  factory _MediaListModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_MediaListModelCopyWith<_$_MediaListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
