// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_list_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaListSectionModel _$MediaListSectionModelFromJson(
    Map<String, dynamic> json) {
  return _MediaListSectionModel.fromJson(json);
}

/// @nodoc
mixin _$MediaListSectionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  MediaListModel? get mediaList => throw _privateConstructorUsedError;
  AssessmentModel? get assessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaListSectionModelCopyWith<MediaListSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaListSectionModelCopyWith<$Res> {
  factory $MediaListSectionModelCopyWith(MediaListSectionModel value,
          $Res Function(MediaListSectionModel) then) =
      _$MediaListSectionModelCopyWithImpl<$Res, MediaListSectionModel>;
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListModel? mediaList,
      AssessmentModel? assessment});

  $MediaListModelCopyWith<$Res>? get mediaList;
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class _$MediaListSectionModelCopyWithImpl<$Res,
        $Val extends MediaListSectionModel>
    implements $MediaListSectionModelCopyWith<$Res> {
  _$MediaListSectionModelCopyWithImpl(this._value, this._then);

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
    Object? mediaList = freezed,
    Object? assessment = freezed,
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
      mediaList: freezed == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as MediaListModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaListModelCopyWith<$Res>? get mediaList {
    if (_value.mediaList == null) {
      return null;
    }

    return $MediaListModelCopyWith<$Res>(_value.mediaList!, (value) {
      return _then(_value.copyWith(mediaList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AssessmentModelCopyWith<$Res>? get assessment {
    if (_value.assessment == null) {
      return null;
    }

    return $AssessmentModelCopyWith<$Res>(_value.assessment!, (value) {
      return _then(_value.copyWith(assessment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MediaListSectionModelCopyWith<$Res>
    implements $MediaListSectionModelCopyWith<$Res> {
  factory _$$_MediaListSectionModelCopyWith(_$_MediaListSectionModel value,
          $Res Function(_$_MediaListSectionModel) then) =
      __$$_MediaListSectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? index,
      String? description,
      MediaListModel? mediaList,
      AssessmentModel? assessment});

  @override
  $MediaListModelCopyWith<$Res>? get mediaList;
  @override
  $AssessmentModelCopyWith<$Res>? get assessment;
}

/// @nodoc
class __$$_MediaListSectionModelCopyWithImpl<$Res>
    extends _$MediaListSectionModelCopyWithImpl<$Res, _$_MediaListSectionModel>
    implements _$$_MediaListSectionModelCopyWith<$Res> {
  __$$_MediaListSectionModelCopyWithImpl(_$_MediaListSectionModel _value,
      $Res Function(_$_MediaListSectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? index = freezed,
    Object? description = freezed,
    Object? mediaList = freezed,
    Object? assessment = freezed,
  }) {
    return _then(_$_MediaListSectionModel(
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
      mediaList: freezed == mediaList
          ? _value.mediaList
          : mediaList // ignore: cast_nullable_to_non_nullable
              as MediaListModel?,
      assessment: freezed == assessment
          ? _value.assessment
          : assessment // ignore: cast_nullable_to_non_nullable
              as AssessmentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaListSectionModel implements _MediaListSectionModel {
  const _$_MediaListSectionModel(
      {this.id, this.index, this.description, this.mediaList, this.assessment});

  factory _$_MediaListSectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MediaListSectionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? index;
  @override
  final String? description;
  @override
  final MediaListModel? mediaList;
  @override
  final AssessmentModel? assessment;

  @override
  String toString() {
    return 'MediaListSectionModel(id: $id, index: $index, description: $description, mediaList: $mediaList, assessment: $assessment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaListSectionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaList, mediaList) ||
                other.mediaList == mediaList) &&
            (identical(other.assessment, assessment) ||
                other.assessment == assessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, index, description, mediaList, assessment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaListSectionModelCopyWith<_$_MediaListSectionModel> get copyWith =>
      __$$_MediaListSectionModelCopyWithImpl<_$_MediaListSectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaListSectionModelToJson(
      this,
    );
  }
}

abstract class _MediaListSectionModel implements MediaListSectionModel {
  const factory _MediaListSectionModel(
      {final int? id,
      final int? index,
      final String? description,
      final MediaListModel? mediaList,
      final AssessmentModel? assessment}) = _$_MediaListSectionModel;

  factory _MediaListSectionModel.fromJson(Map<String, dynamic> json) =
      _$_MediaListSectionModel.fromJson;

  @override
  int? get id;
  @override
  int? get index;
  @override
  String? get description;
  @override
  MediaListModel? get mediaList;
  @override
  AssessmentModel? get assessment;
  @override
  @JsonKey(ignore: true)
  _$$_MediaListSectionModelCopyWith<_$_MediaListSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
